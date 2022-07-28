class CreateWrittens < ActiveRecord::Migration[7.0]
  def change
    create_table :writtens do |t|
      t.string :author_id, :limit => 255, :null => false
      t.string :publication_id, :limit => 255, :null => false

      t.timestamps
    end
    add_index :writtens, [:publication_id, :author_id], unique: true
    add_foreign_key :writtens, :authors, column: 'author_id', primary_key: 'author_id', name: 'writtens_fkey_authors' if table_exists?(:authors) and !foreign_key_exists?(:writtens, column: :author_id)
    add_foreign_key :writtens, :publications, column: 'publication_id', primary_key: 'publication_id', name: 'writtens_fkey_publications' if table_exists?(:publications) and !foreign_key_exists?(:writtens, column: :publication_id)
  end
end
