class Ban < ApplicationRecord
    belongs_to :administrator
    belongs_to :banned_user

end
