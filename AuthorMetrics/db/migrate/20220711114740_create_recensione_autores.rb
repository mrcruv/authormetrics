class CreateRecensioneAutores < ActiveRecord::Migration[7.0]
  def change
    create_table :recensione_autores do |t|

      t.timestamps
    end
  end
end
