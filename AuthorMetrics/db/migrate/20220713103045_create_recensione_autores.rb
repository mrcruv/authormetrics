class CreateRecensioneAutores < ActiveRecord::Migration[7.0]
  def change
    create_table :recensioni_autori do |t|

      t.timestamps
    end
  end
end
