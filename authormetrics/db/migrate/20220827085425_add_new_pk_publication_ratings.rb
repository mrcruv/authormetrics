class AddNewPkPublicationRatings < ActiveRecord::Migration[7.0]
  def change
    add_column :publication_ratings, :publication_rating_id, :primary_key
  end
end
