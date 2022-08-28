class Comment < ApplicationRecord
    belongs_to :user
    belongs_to :publication

    validates :comment,:presence=>true
end
