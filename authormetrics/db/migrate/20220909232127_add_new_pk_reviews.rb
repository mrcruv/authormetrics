class AddNewPkReviews < ActiveRecord::Migration[7.0]
  def change
    add_column :reviews, :review_id, :primary_key
  end
end
