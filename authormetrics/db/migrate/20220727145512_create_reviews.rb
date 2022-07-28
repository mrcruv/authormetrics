class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.string :author_id, :limit => 255, :null => false
      t.serial :user_id, :null => false
      t.text :review, :null => false
      t.timestamp :review_timestamp, :null => false, default: -> { 'CURRENT_TIMESTAMP' }

      t.timestamps
    end
    add_index :reviews, [:user_id, :author_id], unique: true
    add_foreign_key :reviews, :authors, column: 'author_id', primary_key: 'author_id', name: 'reviews_fkey_authors' if table_exists?(:authors) and !foreign_key_exists?(:reviews, column: :author_id)
    add_foreign_key :reviews, :users, column: 'user_id', primary_key: 'user_id', name: 'reviews_fkey_users' if table_exists?(:users) and !foreign_key_exists?(:reviews, column: :user_id)
  end
end
