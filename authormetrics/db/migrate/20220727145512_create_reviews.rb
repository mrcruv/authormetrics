class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.string :author_id
      t.integer :user_id
      t.text :review
      t.timestamp :review_timestamp

      t.timestamps
    end
  end
end
