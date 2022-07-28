class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.string :publication_id, :limit => 255, :null => false
      t.serial :user_id, :null => false
      t.text :comment, :null => false
      t.timestamp :comment_timestamp, :null => false, default: -> { 'CURRENT_TIMESTAMP' }

      t.timestamps
    end
    add_index :comments, [:comment_timestamp, :user_id, :publication_id], unique: true, name: 'index_comments'
    add_foreign_key :comments, :publications, column: 'publication_id', primary_key: 'publication_id', name: 'comments_fkey_publications' if table_exists?(:publications) and !foreign_key_exists?(:comments, column: :publication_id)
    add_foreign_key :comments, :users, column: 'user_id', primary_key: 'user_id', name: 'comments_fkey_users' if table_exists?(:users) and !foreign_key_exists?(:comments, column: :user_id)
  end
end
