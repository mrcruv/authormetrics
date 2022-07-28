class CreatePublicationRatings < ActiveRecord::Migration[7.0]
  def change
    create_table :publication_ratings do |t|
      t.string :publication_id, :limit => 255, :null => false
      t.serial :user_id, :null => false
      t.integer :rating, :null => false
      t.timestamp :rating_timestamp, :null => false, default: -> { 'CURRENT_TIMESTAMP' }

      t.timestamps
    end
    add_index :publication_ratings, [:user_id, :publication_id], unique: true
    add_foreign_key :publication_ratings, :publications, column: 'publication_id', primary_key: 'publication_id', name: 'publication_ratings_fkey_publications' if table_exists?(:publications) and !foreign_key_exists?(:publication_ratings, column: :publication_id)
    add_foreign_key :publication_ratings, :users, column: 'user_id', primary_key: 'user_id', name: 'publication_ratings_fkey_users' if table_exists?(:users) and !foreign_key_exists?(:publication_ratings, column: :user_id)
    add_check_constraint :publication_ratings, 'rating IN (1, 2, 3, 4, 5)', name: 'check_publication_ratings_on_rating'
  end
end
