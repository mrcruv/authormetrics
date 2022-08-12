
class LinkingDependences
    def link_authors_and_cited_by
        b=CitedBy.all
        b.each do |row| 
            t=Author.where(author_id: row.author_id)
            t[0].update(cited_by_id: row.cited_by_id)
        end
    end
end  
