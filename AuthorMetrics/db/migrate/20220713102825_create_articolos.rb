class Createarticoli < ActiveRecord::Migration[7.0]
  def change
    create_table :articoli do |t|

      t.timestamps
    end
  end
end
