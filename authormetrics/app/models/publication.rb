class Publication < ApplicationRecord
    has_many :written,dependent: :destroy
    has_many :comment,dependent: :destroy
    has_many :favorite_publication,dependent: :destroy
    has_many :publication_rating,dependent: :destroy

    has_many :author, :through => :written
    has_many :user, :through => :favorite_publication

    validates :title, :presence=>true, uniqueness: { case_sensitive: true }
    
end
