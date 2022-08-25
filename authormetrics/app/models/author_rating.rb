class AuthorRating < ApplicationRecord
  belongs_to :author
  belongs_to :user

  validates :rating, :presence=>true, numericality: { only_integer: true, less_than_or_equal_to: 10, greater_than_or_equal_to: 1 }

end
