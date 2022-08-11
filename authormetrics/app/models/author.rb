class Author < ApplicationRecord
    has_many :written,dependent: :destroy
    has_many :favorite_author,dependent: :destroy
    has_many :author_rating,dependent: :destroy
    has_many :review,dependent: :destroy
    has_one :cited_by,dependent: :destroy
    
    has_many :publication, :through => :written
    has_many :user, :through => :favorite_author

end
