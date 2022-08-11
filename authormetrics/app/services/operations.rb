require "http"
require 'google_search_results' 

class Operations
    def cited_by_author_id(author_id)
        begin
            params = {
            engine: "google_scholar_profiles",
            author_id: author_id,
            api_key: Rails.application.credentials.api_key,
            q:''
            }
            search = GoogleSearch.new(params)
            cited_by = search.get_hash[:cited_by]
        rescue => exception
            return false
        return true
    
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
            a = Author.new
            a.author_id = p[:author_id]
            a.name = p[:name]
            a.affiliations = p[:affiliations]
            a.interests = p[:interests] # parse?
            a.cited_by =p[:cited_by]
            a.save!
            print a
        end
        return true
    end

    def scrape_author_by_id(author_id)
        begin
            params = {
                engine: "google_scholar_author",
                author_id: author_id,
                api_key: Rails.application.credentials.api_key,
                q:''
            }
            search = GoogleSearch.new(params)
            author = search.get_hash[:author]
        rescue => exception
            return false
        end
        a = Author.new
        a.author_id = author_id
        a.name = author[:author][:name]
        a.affiliations = author[:author][:affiliations]
        # parse?
        a.interests = author[:author][:interests]
        a.cited_by =p[:cited_by]
        a.save!
        return true
    end

    def scrape_publications_by_author_id(author)
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
        return true
    end
    
    def fill_articles_by_authors(authors)
        authors.each do |a|
            scrape_publications_by_author_id(a)
        end
    end


end