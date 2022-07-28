class Author < ApplicationRecord
    has_many :publication
    has_many :favorite_author
    has_many :author_rating
    has_many :review
end
