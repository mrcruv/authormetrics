class CreateCitedBies < ActiveRecord::Migration[7.0]
  def change
    create_table :cited_bies do |t|

      t.timestamps
    end
  end
end
