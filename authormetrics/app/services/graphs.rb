
class Graphs
    def hash_graph(array_graph)
        h= {}
        array_graph.each do |gr|
            h[gr["year"]]=gr["citations"]
        end
        return h
    end
end
    