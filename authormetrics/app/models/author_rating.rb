class AuthorRating < ApplicationRecord
  belongs_to :author
  belongs_to :user

  validates :rating, :presence=>true, numericality: { only_integer: true, less_than_or_equal_to: 10, greater_than_or_equal_to: 1 }
  validates :author_id, :presence=>true, length: {minimum:12,maximum: 12}
  validates :user_id, :presence=>true

end
