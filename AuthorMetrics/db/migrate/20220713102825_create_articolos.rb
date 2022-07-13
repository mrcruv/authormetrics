class CreateArticolos < ActiveRecord::Migration[7.0]
  def change
    create_table :articolos do |t|

      t.timestamps
    end
  end
end
