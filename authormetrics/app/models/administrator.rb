class Administrator < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :rememberable, :validatable
    has_many :ban
    has_many :banned_user, :through => :ban

    validates :username, :presence=>true, uniqueness: { case_sensitive: true }
    validates :password, :presence=>true, length: { in: 12..255 }
    validates :email, :presence=>true, format: { with: URI::MailTo::EMAIL_REGEXP }
end
