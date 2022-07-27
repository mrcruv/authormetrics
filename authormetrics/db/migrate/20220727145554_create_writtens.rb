class CreateWrittens < ActiveRecord::Migration[7.0]
  def change
    create_table :writtens do |t|
      t.string :author_id
      t.string :publication_id

      t.timestamps
    end
  end
end
