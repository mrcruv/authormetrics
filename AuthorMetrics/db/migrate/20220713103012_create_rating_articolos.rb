class CreateRatingArticolos < ActiveRecord::Migration[7.0]
  def change
    create_table :rating_articolos do |t|

      t.timestamps
    end
  end
end
