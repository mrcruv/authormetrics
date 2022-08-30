
class Graphs
    def hash_graph(array_graph)
        h= {}
        array_graph.each do |gr|
            h[gr["year"]]=gr["citations"]
        end
        return h
    end

    def authors_avg_ratings(authors, top_n)
        authors_avg_ratings={}
        authors.each do |author|
          ratings_sum=0
          n= author.author_rating.length
          author.author_rating.each do |rating|
            ratings_sum += rating.rating
          end
          if n>0
            authors_avg_ratings[author.name]= ratings_sum.to_f/n
          else
            authors_avg_ratings[author.name]= 0
          end
        end 
        return authors_avg_ratings.sort_by {|k, v| -v}.first(top_n).to_h
    end

    def pubs_avg_ratings(pubs, top_n)
      pubs_avg_ratings={}
      pubs.each do |pub|
        ratings_sum=0
        n= pub.publication_rating.length
        pub.publication_rating.each do |rating|
          ratings_sum += rating.rating
        end
        if n>0
          pubs_avg_ratings[pub.title]= ratings_sum.to_f/n
        else
          pubs_avg_ratings[pub.title]= 0
        end
      end 
      return pubs_avg_ratings.sort_by {|k, v| -v}.first(top_n).to_h
  end

    def most_reviewed_by_authors_graph(authors)
      h={}
      authors.each do |author|
        author_name=Author.find(author[0]).name
        h[author_name]=author[1]
      end
      return h
    end

    def most_commented_pubs_graph(pubs)
      h={}
      pubs.each do |pub|
        pub_title=Publication.find(pub[0]).title
        h[pub_title]=pub[1]
      end
      return h
    end
end
    