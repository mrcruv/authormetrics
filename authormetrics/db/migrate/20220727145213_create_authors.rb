class CreateAuthors < ActiveRecord::Migration[7.0]
  def change
    create_table :authors do |t|
      t.string :author_id, :limit => 255, :null => false
      t.string :name, :limit => 255, :null => false
      t.string :surname, :limit => 255, :null => false
      t.text :affiliations
      t.string :interests, :limit => 255, :array => true

      t.timestamps
    end
    add_index :authors, [:author_id], unique: true
    add_foreign_key :favorite_authors, :authors, column: 'author_id', primary_key: 'author_id', name: 'favorite_authors_fkey_authors' if table_exists?(:favorite_authors) and !foreign_key_exists?(:favorite_authors, column: :author_id)
    add_foreign_key :author_ratings, :authors, column: 'author_id', primary_key: 'author_id', name: 'author_ratings_fkey_authors' if table_exists?(:author_ratings) and !foreign_key_exists?(:author_ratings, column: :author_id)
    add_foreign_key :writtens, :authors, column: 'author_id', primary_key: 'author_id', name: 'writtens_fkey_authors' if table_exists?(:writtens) and !foreign_key_exists?(:writtens, column: :author_id)
    add_foreign_key :reviews, :authors, column: 'author_id', primary_key: 'author_id', name: 'reviews_fkey_authors' if table_exists?(:reviews) and !foreign_key_exists?(:reviews, column: :author_id)
  end
end
