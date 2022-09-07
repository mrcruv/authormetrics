class AddUniqueConstraints < ActiveRecord::Migration[7.0]
  def change
    add_index :author_ratings, [:author_id, :user_id], unique: true
    add_index :reviews, [:author_id, :user_id], unique: true
    add_index :favorite_authors, [:author_id, :user_id], unique: true
    add_index :publication_ratings, [:publication_id, :user_id], unique: true
    add_index :comments, [:publication_id, :user_id], unique: true
    add_index :favorite_publications, [:publication_id, :user_id], unique: true
  end
end
