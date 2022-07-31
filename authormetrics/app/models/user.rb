class User < ApplicationRecord
    #has_one :banned_user
    has_many :favorite_author
    has_many :favorite_publication
    has_many :comment
    has_many :review
    has_many :author_rating
    has_many :publication_rating

    has_many :publication, :through => :favorite_publication
    has_many :publication, :through => :comment
    has_many :publication. :through => :publication_rating

    has_many :author, :through => :favorite_author
    has_many :author, :through => :author_rating
    has_many :author, :through => :review


end
