class BannedUser < ApplicationRecord
    belongs_to :user
    has_one :ban
end
