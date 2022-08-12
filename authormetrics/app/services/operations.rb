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
            temp=Author.where(author_id: p[:author_id])
            if(temp.size==0)
                a = Author.new
                a.author_id = p[:author_id]
                a.name = p[:name]
                a.affiliations = p[:affiliations]
                a.interests = p[:interests] # parse?
                a.cited=p[:cited_by]
                begin
                    params = {
                        engine: "google_scholar_author",
                        author_id: a.author_id,
                        api_key: Rails.application.credentials.api_key,
                        q:''
                    }
                    search = GoogleSearch.new(params)
                    c = search.get_hash[:cited_by]
                    #print(c)
                rescue => exception
                    print(exception)
                    return false
                end
                b=CitedBy.new
                begin
                    b.all_citations=c[:table][0][:citations][:all]
                    b.citations_from_2016=c[:table][0][:citations][:since_2017]
                    b.h_index=c[:table][1][:h_index][:all]
                    b.h_from_2016=c[:table][1][:h_index][:since_2017]
                    b.i10_index=c[:table][2][:i10_index][:all]
                    b.i10_from_2016=c[:table][2][:i10_index][:since_2017]
                    b.graph=c[:graph]
                rescue => exception
                    b.all_citations=c[:table][0][:citations][:all]
                    b.citations_from_2016=c[:table][0][:citations][:since_2016]
                    b.h_index=c[:table][1][:h_index][:all]
                    b.h_from_2016=c[:table][1][:h_index][:since_2016]
                    b.i10_index=c[:table][2][:i10_index][:all]
                    b.i10_from_2016=c[:table][2][:i10_index][:since_2016]
                    b.graph=c[:graph]
                end
                a.save!
                b.author=a
                b.save!
            end
        end
        l=LinkingDependences.new
        l.link_authors_and_cited_by
        return true
    end
#######################################################################################
    #ricerca per ID,riempie tutti i campi author,articles,cited_by
    def scrape_all_by_author_id(auth)
        begin
            params = {
                engine: "google_scholar_author",
                author_id: auth[:author_id],
                api_key: Rails.application.credentials.api_key,
                q:''
            }
            search = GoogleSearch.new(params)
            author = search.get_hash[:author]
            c = search.get_hash[:cited_by]
            articles = search.get_hash[:articles]
        rescue => exception
            return false
        end

        temp=Author.where(author_id: auth[:author_id])
        if(temp.size==0)
            a=Author.new
            a.author_id = auth[:author_id]
            a.name = author[:name]
            a.affiliations = author[:affiliations]
            a.interests = author[:interests]
            a.save!
        end
        
        temp=CitedBy.where(author_id: auth[:author_id])
        if( temp.size==0)
            b=CitedBy.new
            b.author=auth
            b.all_citations=c[:table][0][:citations][:all]
            b.citations_from_2016=c[:table][0][:citations][:since_2017]
            b.h_index=c[:table][1][:h_index][:all]
            b.h_from_2016=c[:table][1][:h_index][:since_2017]
            b.i10_index=c[:table][2][:i10_index][:all]
            b.i10_from_2016=c[:table][2][:i10_index][:since_2017]
            b.graph=c[:graph]
            t=Author.where(author_id: author[:author_id])
            b.save!
        end
        articles.each do |article|
            temp=Publication.where(publication_id: article[:citation_id])
            if(temp.size==0)
                p = Publication.new
                p.publication_id = article[:citation_id]
                p.title = article[:title]
                p.published_on = article[:publication]
                p.link = article[:link]
                p.pub_year = article[:year]
                p.cited_by = article[:cited_by][:value]
                p.save!
                w=Written.new
                w.author=auth
                w.publication=p
                w.save!
            end
        end
        l=LinkingDependences.new
        l.link_authors_and_cited_by
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
            c = search.get_hash[:cited_by]
            #print(c)
        rescue => exception
            print(exception)
            return false
        end
        temp=CitedBy.where(author_id: auth[:author_id])
        if( temp.size==0)
            b=CitedBy.new
            begin
                b.author=author
                b.all_citations=c[:table][0][:citations][:all]
                b.citations_from_2016=c[:table][0][:citations][:since_2017]
                b.h_index=c[:table][1][:h_index][:all]
                b.h_from_2016=c[:table][1][:h_index][:since_2017]
                b.i10_index=c[:table][2][:i10_index][:all]
                b.i10_from_2016=c[:table][2][:i10_index][:since_2017]
                b.graph=c[:graph]
            rescue => exception
                b.author=author
                b.all_citations=c[:table][0][:citations][:all]
                b.citations_from_2016=c[:table][0][:citations][:since_2016]
                b.h_index=c[:table][1][:h_index][:all]
                b.h_from_2016=c[:table][1][:h_index][:since_2016]
                b.i10_index=c[:table][2][:i10_index][:all]
                b.i10_from_2016=c[:table][2][:i10_index][:since_2016]
                b.graph=c[:graph]
            end
        end
        l=LinkingDependences.new
        l.link_authors_and_cited_by
        b.save!
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
            temp=Pubblication.where(publication_id: article[:citation_id])
            if(temp.size==0)
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
############################################################################################
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
            scrape_all_by_author_id(author)
        end
    end
    def take_all_profiles_by_searh(search)
        scrape_authors_by_name(search)
    end

end