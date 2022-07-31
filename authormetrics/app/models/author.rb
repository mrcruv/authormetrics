class Author < ApplicationRecord
    has_many :written
    
    has_many :favorite_author
    has_many :author_rating
    has_many :review

    has_many :publication, :through => :written
    has_many :user, :through => :favorite_author
    

end
