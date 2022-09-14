class AddFieldsToBannedUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :banned_users, :reason, :text
    add_column :banned_users, :admin_id, :integer
    add_foreign_key :banned_users, :administrators, column: :admin_id, primary_key: :admin_id
  end
end
