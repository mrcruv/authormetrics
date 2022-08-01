class User < ApplicationRecord
    #has_one :banned_user
    has_many :favorite_author, dependent: :destroy
    has_many :favorite_publication,dependent: :destroy
    has_many :comment,dependent: :destroy
    has_many :review,dependent: :destroy
    has_many :author_rating,dependent: :destroy
    has_many :publication_rating,dependent: :destroy

    has_many :publication, :through => :favorite_publication
    has_many :publication, :through => :comment
    has_many :publication, :through => :publication_rating

    has_many :author, :through => :favorite_author
    has_many :author, :through => :author_rating
    has_many :author, :through => :review

    require 'date'

    user_id = :id
    reg_date = Date.today

    validates :username, :presence=>true, uniqueness: { case_sensitive: true }
    validates :password, :presence=>true, length: { in: 12..20 }
    validates :name, :presence=>true,length: { in: 2..50 }
    validates :surname, :presence=>true,length: { in: 2..50 }
    validates :birth_date, :presence=>true, comparison:  {less_than_or_equal_to: Date.today}
    validates :email, :presence=>true, format: { with: URI::MailTo::EMAIL_REGEXP }

end
