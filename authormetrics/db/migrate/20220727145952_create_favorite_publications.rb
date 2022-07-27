class CreateFavoritePublications < ActiveRecord::Migration[7.0]
  def change
    create_table :favorite_publications do |t|
      t.string :publication_id
      t.integer :user_id

      t.timestamps
    end
  end
end
