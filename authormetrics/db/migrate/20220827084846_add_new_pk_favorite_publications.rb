class AddNewPkFavoritePublications < ActiveRecord::Migration[7.0]
    def change
      add_column :favorite_publications, :favorite_publication_id, :primary_key
    end
end
