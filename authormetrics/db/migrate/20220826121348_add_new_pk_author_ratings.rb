class AddNewPkAuthorRatings < ActiveRecord::Migration[7.0]
  def change
    add_column :author_ratings, :author_rating_id, :primary_key
  end
end
