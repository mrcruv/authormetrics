class Publication < ApplicationRecord
    has_many :author
    has_many :comment
    has_many :favorite_publication
    has_many :publication_rating
end
