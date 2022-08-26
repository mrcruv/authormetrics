class Comment < ApplicationRecord
    belongs_to :user
    belongs_to :publication

    validate :comment,:presence=>true
end
