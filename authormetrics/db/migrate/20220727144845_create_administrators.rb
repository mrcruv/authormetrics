class CreateAdministrators < ActiveRecord::Migration[7.0]
  def change
    create_table :administrators do |t|
      t.integer :admin_id
      t.string :username
      t.string :password

      t.timestamps
    end
  end
end
