class RenameCitedByColumn < ActiveRecord::Migration[7.0]
  def change
    rename_column :authors, :cited_by, :cited
  end
end
