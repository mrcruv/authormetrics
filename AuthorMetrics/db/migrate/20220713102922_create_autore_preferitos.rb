class CreateAutorePreferitos < ActiveRecord::Migration[7.0]
  def change
    create_table :autore_preferitos do |t|

      t.timestamps
    end
  end
end
