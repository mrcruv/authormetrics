class CreatePublicationRatings < ActiveRecord::Migration[7.0]
  def change
    create_table :publication_ratings do |t|
      t.string :publication_id
      t.integer :user_id
      t.integer :rating
      t.timestamp :rating_timestamp

      t.timestamps
    end
  end
end
