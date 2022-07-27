class CreatePublications < ActiveRecord::Migration[7.0]
  def change
    create_table :publications do |t|
      t.string :publication_id
      t.string :title
      t.string :link
      t.text :published_on
      t.integer :cited_by
      t.integer :pub_year

      t.timestamps
    end
  end
end
