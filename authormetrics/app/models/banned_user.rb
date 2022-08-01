class BannedUser < ApplicationRecord
    belongs_to :user
    has_one :ban,dependent: :destroy
end
