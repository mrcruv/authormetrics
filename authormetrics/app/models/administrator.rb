class Administrator < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    has_many :ban
    has_many :banned_user, :through => :ban

    validates :username, :presence=>true, uniqueness: { case_sensitive: true }
    validates :password, :presence=>true, length: { in: 12..255 }
    validates :email, :presence=>true, format: { with: URI::MailTo::EMAIL_REGEXP }
end
