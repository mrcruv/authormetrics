class CreateCommentos < ActiveRecord::Migration[7.0]
  def change
    create_table :commentos do |t|

      t.timestamps
    end
  end
end
