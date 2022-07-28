class CreateAdministrators < ActiveRecord::Migration[7.0]
  def change
    create_table :administrators do |t|
      t.serial :administrator_id, :null => false
      t.string :username, :limit => 255, :null => false
      t.string :password, :limit => 255, :null => false

      t.timestamps
    end
    add_index :administrators, [:administrator_id], unique: true
    add_index :administrators, [:username], unique: true
    add_foreign_key :bans, :administrators, column: 'administrator_id', primary_key: 'administrator_id', name: 'bans_fkey_administrators' if table_exists?(:bans) and !foreign_key_exists?(:bans, column: :administrator_id)
  end
end
