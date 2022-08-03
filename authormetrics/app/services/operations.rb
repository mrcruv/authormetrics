require "http"
require 'google_search_results' 

class Operation
    def self.scrape_authors_by_name(author_name)?
        begin
            params = {
            engine: "google_scholar_profiles",
            mauthors: author_name,
            api_key: "secret_api_key"
            }
            search = GoogleSearch.new(params)
            profiles = search.get_hash[:profiles]
        rescue => exception
            return false
        end
        profiles.each do |p|
            a = Author.new
            a.author_id = p['author_id']
            a.name = p['name']
            a.affiliations = p['affiliations']
            a.interests = p['interests'] # parse?
            a.save!
        end
        return true
    end

    def self.scrape_author_by_id(author_id)?
        begin
            params = {
                engine: "google_scholar_author",
                author_id: author_id,
                api_key: "secret_api_key"
            }
            search = GoogleSearch.new(params)
            author = search.get_hash[:author]
        rescue => exception
            return false
        end
            a = Author.new
            a.author_id = author_id
            a.name = author['author']['name']
            a.affiliations = author['author']['affiliations']
            # parse?
            a.interests = author['author']['interests']
            a.save!
        end
        return true
    end

    def self.scrape_publications_by_author_id(author_id)
        begin
            params = {
                engine: "google_scholar_author",
                author_id: author_id,
                api_key: "secret_api_key"
              }
              
              search = GoogleSearch.new(params)
              articles = search.get_hash[:articles]
        rescue => exception
            return false
        end
            articles.each do |article|
                p = Publication.new
                p.publication_id = article['citation_id']
                p.title = article['title']
                p.published_on = article['publication']
                p.link = article['link']
                p.pub_year = article['year']
                p.cited_by = article['cited_by']['value]']
                p.save!
            end
        return true
    end


end