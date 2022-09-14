class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :rememberable, :validatable,
         :omniauthable, :omniauth_providers => [:google_oauth2]
    #has_one :banned_user
    has_many :favorite_author, dependent: :destroy
    has_many :favorite_publication,dependent: :destroy

    has_many :publication, :through => :favorite_publication
    has_many :author, :through => :favorite_author
    

    require 'date'
    reg_date = Date.today

    validates :username, :presence=>true, uniqueness: { case_sensitive: true }
    validates :password, :presence=>true, length: { in: 12..255 }
    validates :name, :presence=>true,length: { in: 2..50 }
    validates :surname, :presence=>true,length: { in: 2..50 }
    validates :birth_date, :presence=>true, comparison:  {less_than_or_equal_to: Date.today}
    validates :email, :presence=>true, format: { with: URI::MailTo::EMAIL_REGEXP }

    def self.from_omniauth(access_token)
      data = access_token.info
      user = User.where(email: data['email']).first
      unless user
        name_surname = data['name'].split(' ')
        user = User.create(name: name_surname[0], surname: name_surname[1], password: Devise.friendly_token[0, 20], email: data['email'],
          birth_date: Date.today, username: "user"+access_token.uid, uid: access_token.uid, provider: access_token.provider)
      end
      user
    end


end
