class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
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

    # def self.from_omniauth(auth)
    #     link_tokens = auth.info.link.split("/")
    #     name_split = auth.info.name.split(" ")
    #     user = User.where(email: auth.info.email).first
    #     user = User.create!(provider: auth.provider, uid: auth.uid, name: name_split[0], surname: name_split[1], email: auth.info.email, password: Devise.friendly_token[0, 20],
    #     birth_date: auth.info.birthday, username: link_tokens[link_tokens.length-1])
    #     user
    # end

    # def self.new_with_session(params, session)
    #   super.tap do |user|
    #     if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
    #       user.email = data["email"] if user.email.blank?
    #     end
    #   end
    # end

    def self.from_omniauth(auth)
      where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
        user.email = auth.info.email
        user.password = Devise.friendly_token[0, 20]
        user.name = auth.info.name
        user.surname = auth.info.surname
        #user.avatar_url = auth.info.image

        user.birth_date = Date.today
        user.username = "user"+user.uid
      end
    end


end
