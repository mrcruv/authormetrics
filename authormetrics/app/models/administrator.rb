class Administrator < ApplicationRecord
    has_many :ban
    has_many :banned_user, :through => :ban
end
