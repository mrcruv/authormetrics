class Createscritti < ActiveRecord::Migration[7.0]
  def change
    create_table :scritti do |t|

      t.timestamps
    end
  end
end
