class Scritto < ApplicationRecord
   belongs_to :author, class_name: "author", foreign_key: "author_id"
   belongs_to :articolo, class_name: "articolo", foreign_key: "articolo_id"
end

