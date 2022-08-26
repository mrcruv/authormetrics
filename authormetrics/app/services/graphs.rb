
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
end
    