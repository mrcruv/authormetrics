class DropBans < ActiveRecord::Migration[7.0]
  def change
    drop_table :bans
  end
end
