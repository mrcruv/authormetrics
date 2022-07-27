class CreateBans < ActiveRecord::Migration[7.0]
  def change
    create_table :bans do |t|
      t.integer :user_id
      t.integer :admin_id
      t.text :reason

      t.timestamps
    end
  end
end
