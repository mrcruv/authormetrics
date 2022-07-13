class CreateArticoloPreferitos < ActiveRecord::Migration[7.0]
  def change
    create_table :articolo_preferitos do |t|

      t.timestamps
    end
  end
end
