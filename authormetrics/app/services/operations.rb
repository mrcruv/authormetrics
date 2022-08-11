require "http"
require 'google_search_results' 

class Operations
    #ricerca per nome
    def scrape_authors_by_name(author_name)
        begin
            params = {
            engine: "google_scholar_profiles",
            mauthors: author_name,
            api_key: Rails.application.credentials.api_key,
            q:''
            }
            #"c7e57fcc425f53cda7a150c251ce9e223313a8bd9264d3e823a27fefca1aabdf"
            search = GoogleSearch.new(params)
            profiles = search.get_hash[:profiles]
        rescue => exception
            return false
        end
        profiles.each do |p|
            temp=Author.new
            temp=temp.Author.where(author_id: p[:author_id])
            if(temp==nil)
                a = Author.new
                a.author_id = p[:author_id]
                a.name = p[:name]
                a.affiliations = p[:affiliations]
                a.interests = p[:interests] # parse?
                a.cited_by =p[:cited_by]
                a.save!
            end
        end
        return true
    end
    #ricerca per ID,riempie tutti i campi author,articles,cited_by
    def scrape_all_by_author_id(author)
        begin
            params = {
                engine: "google_scholar_author",
                author_id: author.id,
                api_key: Rails.application.credentials.api_key,
                q:''
            }
            search = GoogleSearch.new(params)
            author = search.get_hash[:author]
            cited_by = search.get_hash[:cited_by]
            articles = search.get_hash[:articles]
        rescue => exception
            return false
        end
        temp=Author.new
        temp=temp.where(author_id: author.id)
        if(temp==nil || temp==[])
            a = Author.new
            a.author_id = author_id
            a.name = author[:author][:name]
            a.affiliations = author[:author][:affiliations]
            # parse?
            a.interests = author[:author][:interests]
            a.cited_by =p[:cited_by]
            a.save!
        end
        temp=CitedBy.new
        temp=temp.where(author_id: author.id)
        if( temp==nil || temp==[])
            b=CitedBy.new
            b.author=author
            b.all_citations=c[:table][:citation][:all]
            b.citation_from_2016=c[:table][:citation][:depuis_2016]
            b.h_index=c[:indice_h][:all]
            b.h_from_2016=c[:indice_h][:depuis_2016]
            b.i10_index=c[:indice_i10][:all]
            b.i10_from_2016=c[:indice_i10][:depuis_2016]
            b.graph=c[:graph]
            b.save!
        end
        articles.each do |article|
            temp=Publication.new
            temp=temp.where(publication_id: article[:citation_id])
            if(temp==nil || temp==[])
                p = Publication.new
                p.publication_id = article[:citation_id]
                p.title = article[:title]
                p.published_on = article[:publication]
                p.link = article[:link]
                p.pub_year = article[:year]
                p.cited_by = article[:cited_by][:value]
                p.save!
                w=Written.new
                w.author=author
                w.publication=p
                w.save!
            end
        end
        return true
    end
############################################################################
    def scrape_cited_by_from_author_id(author)
        begin
            params = {
            engine: "google_scholar_author",
            author_id: author.id,
            api_key: Rails.application.credentials.api_key,
            q:''
            }
            search = GoogleSearch.new(params)
            cited_by = search.get_hash[:cited_by]
        rescue => exception
            return false
        end
        #temp=CitedBy.new
        #temp=temp.where(author_id: author.id)
        #if(temp==nil || temp==[])
            a=CitedBy.new
            a.author=author
            a.all_citations=c[:table][:citation][:all]
            a.citation_from_2016=c[:table][:citation][:depuis_2016]
            a.h_index=c[:indice_h][:all]
            a.h_from_2016=c[:indice_h][:depuis_2016]
            a.i10_index=c[:indice_i10][:all]
            a.i10_from_2016=c[:indice_i10][:depuis_2016]
            a.graph=c[:graph]
            a.save!
        #end
        return true
    end
######################################################################################

    def scrape_publications_from_author_id(author)
        begin
            params = {
                engine: "google_scholar_author",
                author_id: author.id,
                api_key: Rails.application.credentials.api_key,
                q:''
            }
              
            search = GoogleSearch.new(params)
            articles = search.get_hash[:articles]
        rescue => exception
            return false
        end
        articles.each do |article|
            temp=Publication.new
            temp=temp.where(publication_id: article[:citation_id])
            if(temp==nil || temp==[])
                p = Publication.new
                p.publication_id = article[:citation_id]
                p.title = article[:title]
                p.published_on = article[:publication]
                p.link = article[:link]
                p.pub_year = article[:year]
                p.cited_by = article[:cited_by][:value]
                p.save!
                w=Written.new
                w.author=author
                w.publication=p
                w.save!
            end
        end
        return true
    end
######################################################################################
    def scrape_author_by_author_id(author)
        temp=Author.new
        temp=temp.where(author_id: author.id)
        if(temp != nil && temp != [])
            return false
        end
        begin
            params = {
                engine: "google_scholar_author",
                author_id: author.id,
                api_key: Rails.application.credentials.api_key,
                q:''
            }
              
            search = GoogleSearch.new(params)
            author = search.get_hash[:author]
        rescue => exception
            return false
        end
        a = Author.new
        a.author = author
        a.name = author[:author][:name]
        a.affiliations = author[:author][:affiliations]
        a.interests = author[:author][:interests]
        a.cited_by =p[:cited_by]
        a.save!
        return true
    end
############################################################################################  
    #FILL FUNCTIONS

    def take_cited_by_from_author_ids(authors)
        authors.each do |author|
            scrape_cited_by_from_author_id(author)
        end
    end

    def take_publications_from_author_ids(authors)
        authors.each do |author|
            scrape_publications_from_author_id(author)
        end
    end

    def take_all_by_author_ids(authors)
        authors.each do |author|
            scrape_all_from_author_id(author)
        end
    end

end