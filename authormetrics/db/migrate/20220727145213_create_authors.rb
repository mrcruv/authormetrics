class CreateAuthors < ActiveRecord::Migration[7.0]
  def change
    create_table :authors do |t|
      t.string :author_id
      t.string :name
      t.string :surname
      t.text :affiliations
      t.text :interests

      t.timestamps
    end
  end
end
