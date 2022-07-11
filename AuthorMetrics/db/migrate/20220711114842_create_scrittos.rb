class CreateScrittos < ActiveRecord::Migration[7.0]
  def change
    create_table :scrittos do |t|

      t.timestamps
    end
  end
end
