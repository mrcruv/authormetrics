class CreateFavoriteAuthors < ActiveRecord::Migration[7.0]
  def change
    create_table :favorite_authors do |t|
      t.string :author_id
      t.integer :user_id

      t.timestamps
    end
  end
end
