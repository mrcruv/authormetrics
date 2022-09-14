class Author < ApplicationRecord
    has_many :written,dependent: :destroy
    has_many :favorite_author,dependent: :destroy
    has_many :author_rating,dependent: :destroy
    has_many :review,dependent: :destroy
    has_one :cited_by,dependent: :destroy
    
    has_many :publication, :through => :written
    has_many :user, :through => :favorite_author


    accepts_nested_attributes_for :author_rating
    accepts_nested_attributes_for :review

    validates :name, :presence=>true, uniqueness: { case_sensitive: true }, format: { :without => /[0-9]/}
    validates :author_id, :presence=>true, format: { :with => /\w/}
end
