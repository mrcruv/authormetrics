class Publication < ApplicationRecord
    has_many :written
    has_many :comment
    has_many :favorite_publication
    has_many :publication_rating
    
    has_many :author, :through => :written
    has_many :user, :through => :favorite_publication
    has_many :user, :through => :comment
end
