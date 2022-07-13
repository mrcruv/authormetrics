class CreateUtentes < ActiveRecord::Migration[7.0]
  def change
    create_table :utentes do |t|

      t.timestamps
    end
  end
end
