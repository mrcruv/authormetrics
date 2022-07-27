class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.string :publication_id
      t.integer :user_id
      t.text :comment
      t.timestamp :comment_timestamp

      t.timestamps
    end
  end
end
