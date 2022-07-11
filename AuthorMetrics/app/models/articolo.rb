class Articolo < ApplicationRecord
    has_many :scritto, dependent: :destroy

end
