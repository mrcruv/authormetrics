class CreateAmministratori < ActiveRecord::Migration[7.0]
  def change
    create_table :amministratori do |t|

      t.timestamps
    end
  end
end
