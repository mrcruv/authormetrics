class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, omniauth_providers: %i[facebook]
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

    def self.from_omniauth(auth)
        name_split = auth.info.name.split(" ")
        user = User.where(email: auth.info.email).first
        user ||= User.create!(provider: auth.provider, uid: auth.uid, last_name: name_split[0], first_name: name_split[1], email: auth.info.email, password: Devise.friendly_token[0, 20])
          user
      end
end
