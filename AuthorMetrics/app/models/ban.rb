class Ban < ApplicationRecord
    belongs_to :administrator
    belongs_to :user
end
