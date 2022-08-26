class Review < ApplicationRecord
    belongs_to :author
    belongs_to :user

    validates :review, :presence=>true, uniqueness: { case_sensitive: true }
end
