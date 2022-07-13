class CreateRatingAutores < ActiveRecord::Migration[7.0]
  def change
    create_table :rating_autores do |t|

      t.timestamps
    end
  end
end
