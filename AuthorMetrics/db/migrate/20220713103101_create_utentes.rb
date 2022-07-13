class Createutenti < ActiveRecord::Migration[7.0]
  def change
    create_table :utenti do |t|

      t.timestamps
    end
  end
end
