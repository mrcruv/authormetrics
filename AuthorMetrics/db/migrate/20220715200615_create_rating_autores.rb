class CreateRatingAutori < ActiveRecord::Migration[7.0]
  def change
    create_table :rating_autori do |t|

      t.timestamps
    end
  end
end
