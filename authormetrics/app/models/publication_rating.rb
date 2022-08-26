class PublicationRating < ApplicationRecord
    belongs_to :user
    belongs_to :publication

    validates :rating, :presence=>true, numericality: { only_integer: true, less_than_or_equal_to: 10, greater_than_or_equal_to: 1 }
end
