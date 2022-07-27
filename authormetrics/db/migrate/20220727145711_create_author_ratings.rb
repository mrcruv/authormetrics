class CreateAuthorRatings < ActiveRecord::Migration[7.0]
  def change
    create_table :author_ratings do |t|
      t.string :author_id
      t.integer :user_id
      t.integer :rating
      t.timestamp :rating_timestamp

      t.timestamps
    end
  end
end
