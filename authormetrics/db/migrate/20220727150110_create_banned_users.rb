class CreateBannedUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :banned_users do |t|
      t.serial :user_id, :null => false
      t.date :start_date, :null => false, default: -> { 'CURRENT_DATE' }
      t.date :end_date, :null => false

      t.timestamps
    end
    add_index :banned_users, [:user_id], unique: true
    add_foreign_key :banned_users, :users, column: 'user_id', primary_key: 'user_id', name: 'banned_users_fkey_users' if table_exists?(:users) and !foreign_key_exists?(:banned_users, column: :user_id)
  end
end
