class AddCitedByTableAndConstraints < ActiveRecord::Migration[7.0]
    def change
      create_table :cited_bies , primary_key: "cited_by_id", id: :serial, force: :cascade do |t|
        t.string "author_id", limit: 255, null: false
        t.integer "all_citations" 
        t.integer "citations_from_2016"
        t.integer "h_index" 
        t.integer "h_from_2016"
        t.integer "i10_index" 
        t.integer "i10_from_2016"
        t.json "graph"
   
        t.timestamps
      end
      add_foreign_key "cited_bies", "authors", column: :author_id ,primary_key: :author_id, name: "cited_by_author_id_fkey"
      add_column(:authors,:cited_by_id,:integer)
      add_foreign_key "authors" , "cited_bies", column: :cited_by_id,primary_key: :cited_by_id, name: "author_id_cited_by_fkey"
    end
  
end
