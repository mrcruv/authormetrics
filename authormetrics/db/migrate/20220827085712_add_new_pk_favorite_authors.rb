class AddNewPkFavoriteAuthors < ActiveRecord::Migration[7.0]
  def change
    add_column :favorite_authors, :favorite_author_id, :primary_key
  end
end
