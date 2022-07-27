class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.integer :user_id
      t.string :username
      t.string :password
      t.string :name
      t.string :surname
      t.date :birth_date
      t.date :reg_date
      t.string :email

      t.timestamps
    end
  end
end
