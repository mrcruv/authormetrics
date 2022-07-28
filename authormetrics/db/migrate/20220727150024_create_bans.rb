class CreateBans < ActiveRecord::Migration[7.0]
  def change
    create_table :bans do |t|
      t.serial :user_id, :null => false
      t.serial :administrator_id, :null => false
      t.text :reason, :null => false

      t.timestamps
    end
    add_index :bans, [:administrator_id, :user_id], unique: true
    add_foreign_key :bans, :administrators, column: 'administrator_id', primary_key: 'administrator_id', name: 'bans_fkey_administrators' if table_exists?(:administrators) and !foreign_key_exists?(:bans, column: :administrator_id)
    add_foreign_key :bans, :users, column: 'user_id', primary_key: 'user_id', name: 'bans_fkey_users' if table_exists?(:users) and !foreign_key_exists?(:bans, column: :user_id)
  end
end
