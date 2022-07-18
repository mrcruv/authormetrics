class CreateScritto < ActiveRecord::Migration[7.0]
  def change
    create_table :scritto do |t|

      t.timestamps
    end
  end
end
