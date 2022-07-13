class CreateAutorePreferitos < ActiveRecord::Migration[7.0]
  def change
    create_table :autori_preferiti do |t|

      t.timestamps
    end
  end
end
