class CreateAutori < ActiveRecord::Migration[7.0]
  def change
    create_table :autori do |t|

      t.timestamps
    end
  end
end
