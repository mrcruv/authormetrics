class CreateRatingarticoli < ActiveRecord::Migration[7.0]
  def change
    create_table :rating_articoli do |t|

      t.timestamps
    end
  end
end
