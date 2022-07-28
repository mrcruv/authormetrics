class CreateFavoritePublications < ActiveRecord::Migration[7.0]
  def change
    create_table :favorite_publications do |t|
      t.string :publication_id, :limit => 255, :null => false
      t.serial :user_id, :null => false

      t.timestamps
    end
    add_index :favorite_publications, [:user_id, :publication_id], unique: true
    add_foreign_key :favorite_publications, :publications, column: 'publication_id', primary_key: 'publication_id', name: 'favorite_publications_fkey_publications' if table_exists?(:publications) and !foreign_key_exists?(:favorite_publications, column: :publication_id)
    add_foreign_key :favorite_publications, :users, column: 'user_id', primary_key: 'user_id', name: 'favorite_publications_fkey_users' if table_exists?(:users) and !foreign_key_exists?(:favorite_publications, column: :user_id)
  end
end
