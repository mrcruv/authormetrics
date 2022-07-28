class User < ApplicationRecord
    #has_one :banned_user
    has_many :favorite_author
    has_many :favorite_publication
    has_many :comment
    has_many :review
    has_many :author_rating
    has_many :publication_rating
end
