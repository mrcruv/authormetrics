class AddCitedByAttributeForAuthors < ActiveRecord::Migration[7.0]
  def change
      add_column(:authors,:cited_by,:integer)
  end
end
