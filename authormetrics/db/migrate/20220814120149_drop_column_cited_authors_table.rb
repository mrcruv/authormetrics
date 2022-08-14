class DropColumnCitedAuthorsTable < ActiveRecord::Migration[7.0]
  def change
    remove_column :authors, :cited
  end
end
