class CreateFavoriteAuthors < ActiveRecord::Migration[7.0]
  def change
    create_table :favorite_authors do |t|
      t.string :author_id, :limit => 255, :null => false
      t.serial :user_id, :null => false

      t.timestamps
    end
    add_index :favorite_authors, [:user_id, :author_id], unique: true
    add_foreign_key :favorite_authors, :authors, column: 'author_id', primary_key: 'author_id', name: 'favorite_authors_fkey_authors' if table_exists?(:authors) and !foreign_key_exists?(:favorite_authors, column: :author_id)
    add_foreign_key :favorite_authors, :users, column: 'user_id', primary_key: 'user_id', name: 'favorite_authors_fkey_users' if table_exists?(:users) and !foreign_key_exists?(:favorite_authors, column: :user_id)
  end
end
