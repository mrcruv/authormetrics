class CreateArticolipreferiti < ActiveRecord::Migration[7.0]
  def change
    create_table :articoli_preferiti do |t|

      t.timestamps
    end
  end
end
