class Createcommenti < ActiveRecord::Migration[7.0]
  def change
    create_table :commenti do |t|

      t.timestamps
    end
  end
end
