class Author < ApplicationRecord
    has_many :scritto, dependent: :destroy
    has_many :articolo, through: :join_association, source: :join_association_table_foreign_key_to_articolo_table

end

