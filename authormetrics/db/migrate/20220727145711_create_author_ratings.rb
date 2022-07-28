class CreateAuthorRatings < ActiveRecord::Migration[7.0]
  def change
    create_table :author_ratings do |t|
      t.string :author_id, :limit => 255, :null => false
      t.serial :user_id, :null => false
      t.integer :rating, :null => false
      t.timestamp :rating_timestamp, :null => false, default: -> { 'CURRENT_TIMESTAMP' }

      t.timestamps
    end
    add_index :author_ratings, [:user_id, :author_id], unique: true
    add_foreign_key :author_ratings, :authors, column: 'author_id', primary_key: 'author_id', name: 'author_ratings_fkey_authors' if table_exists?(:authors) and !foreign_key_exists?(:author_ratings, column: :author_id)
    add_foreign_key :author_ratings, :users, column: 'user_id', primary_key: 'user_id', name: 'author_ratings_fkey_users' if table_exists?(:users) and !foreign_key_exists?(:author_ratings, column: :user_id)
    add_check_constraint :author_ratings, 'rating IN (1, 2, 3, 4, 5)', name: 'check_author_ratings_on_rating'
  end
end
