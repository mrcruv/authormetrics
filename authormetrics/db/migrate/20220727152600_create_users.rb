class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.serial :user_id, :null => false
      t.string :username, :limit => 255, :null => false
      t.string :email, :limit => 255, :null => false
      t.string :password, :limit => 255, :null => false
      t.string :name, :limit => 255, :null => false
      t.string :surname, :limit => 255, :null => false
      t.date :birth_date, :null => false
      t.date :reg_date, :null => false, default: -> { 'CURRENT_DATE' }

      t.timestamps
    end
    add_index :users, [:user_id], unique: true
    add_index :users, [:username], unique: true
    add_index :users, [:email], unique: true
    add_foreign_key :banned_users, :users, column: 'user_id', primary_key: 'user_id', name: 'banned_users_fkey_users' if table_exists?(:banned_users) and !foreign_key_exists?(:banned_users, column: :user_id)
    add_foreign_key :bans, :users, column: 'user_id', primary_key: 'user_id', name: 'bans_fkey_users' if table_exists?(:bans) and !foreign_key_exists?(:bans, column: :user_id)
    add_foreign_key :favorite_publications, :users, column: 'user_id', primary_key: 'user_id', name: 'favorite_publications_fkey_users' if table_exists?(:favorite_publications) and !foreign_key_exists?(:favorite_publications, column: :user_id)
    add_foreign_key :favorite_authors, :users, column: 'user_id', primary_key: 'user_id', name: 'favorite_authors_fkey_users' if table_exists?(:favorite_authors) and !foreign_key_exists?(:favorite_authors, column: :user_id)
    add_foreign_key :publication_ratings, :users, column: 'user_id', primary_key: 'user_id', name: 'publication_ratings_fkey_users' if table_exists?(:publication_ratings) and !foreign_key_exists?(:publication_ratings, column: :user_id)
    add_foreign_key :author_ratings, :users, column: 'user_id', primary_key: 'user_id', name: 'author_ratings_fkey_users' if table_exists?(:author_ratings) and !foreign_key_exists?(:author_ratings, column: :user_id)
    add_foreign_key :reviews, :users, column: 'user_id', primary_key: 'user_id', name: 'reviews_fkey_users' if table_exists?(:reviews) and !foreign_key_exists?(:reviews, column: :user_id)
    add_foreign_key :comments, :users, column: 'user_id', primary_key: 'user_id', name: 'comments_fkey_users' if table_exists?(:comments) and !foreign_key_exists?(:comments, column: :user_id)
  end
end
