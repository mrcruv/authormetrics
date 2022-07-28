class CreatePublications < ActiveRecord::Migration[7.0]
  def change
    create_table :publications do |t|
      t.string :publication_id, :limit => 255, :null => false
      t.string :title, :limit => 255, :null => false
      t.string :link, :limit => 255
      t.text :published_on
      t.integer :cited_by
      t.integer :pub_year

      t.timestamps
    end
    add_index :publications, [:publication_id], unique: true
    add_check_constraint :publications, 'cited_by IS NOT NULL OR cited_by >= 0', name: 'check_publications_on_cited_by'
    add_foreign_key :favorite_publications, :publications, column: 'publication_id', primary_key: 'publication_id', name: 'favorite_publications_fkey_publications' if table_exists?(:favorite_publications) and !foreign_key_exists?(:favorite_publications, column: :publication_id)
    add_foreign_key :publication_ratings, :publications, column: 'publication_id', primary_key: 'publication_id', name: 'publication_ratings_fkey_publications' if table_exists?(:publication_ratings) and !foreign_key_exists?(:publication_ratings, column: :publication_id)
    add_foreign_key :writtens, :publication, column: 'publication_id', primary_key: 'publication_id', name: 'writtens_fkey_publications' if table_exists?(:writtens) and !foreign_key_exists?(:writtens, column: :publication_id)
    add_foreign_key :comments, :publications, column: 'publication_id', primary_key: 'publication_id', name: 'comments_fkey_publications' if table_exists?(:comments) and !foreign_key_exists?(:comments, column: :publication_id)
  end
end
