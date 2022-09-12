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
            search = GoogleSearch.new(params)
            profiles = search.get_hash[:profiles]
        rescue => exception
            return []
        end
        result=Array.new
        profiles.each do |p|
            temp=Author.where(author_id: p[:author_id])
            if(temp.size==0)
                a = Author.new
                a.author_id = p[:author_id]
                a.name = p[:name]
                a.affiliations = p[:affiliations]
                a.interests = p[:interests] # parse?
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
                    next
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
                l=LinkingDependences.new
                l.link_authors_and_cited_by
                result.push(a)
            else
                result.push(temp[0])
            end 
        end
        return result
    end
        
    
#######################################################################################
    def scrape_publications_by_search(s)
        num=20
        start=0
        while (1) do
            begin
            params = {
                engine: "google_scholar",
                q: s,
                api_key: Rails.application.credentials.api_key,
                hl: "en",
                num:num,
                start:start
            }
            
            search = GoogleSearch.new(params)
            o = search.get_hash[:organic_results]
            print o
            rescue => exception
                print exception
                return {}
            end
            arr=Array.new
            o.each do |result| #per ogni risultato "organico"
                pub_info=result[:publication_info] #prendi pub_info
                if pub_info.has_key?(:authors)==true # vedi se hanno il campo authors nella chiave 
                    #salvo publication/written/authors/cited_by e faccio la return della publications con la ref verso author nella view
                    a=Author.new
                    a=scrape_author_by_author_id(pub_info[:authors][0][:author_id])
                    p=Publication.new
                    p[:publication_id]=result[:result_id] +":"+ pub_info[:authors][0][:author_id]
                    p[:title]=result[:title]
                    p[:link]=result[:link]
                    if(pub_info[:summary].split("-")[1].size > 8)
                        p[:published_on]=pub_info[:summary].split("-")[1]
                    else
                        p[:published_on]=pub_info[:summary].split("-")[2]
                    end
                    p[:cited_by]=result[:inline_links][:cited_by][:total]
                    p[:pub_year]=String(pub_info[:summary].match /[0-9]{4}/)
                    temp=Publication.where(publication_id: p[:publication_id])
                    if(temp.size==0)
                        p.save!
                    else
                        p=temp[0]
                    end
                    arr.push(p)
                    temp=Written.where(publication_id: p[:publication_id])
                    if(temp.size==0)
                        w=Written.new
                        w.author=(Author.where(author_id: pub_info[:authors][0][:author_id]))[0]
                        w.publication=(Publication.where(publication_id: p[:publication_id]))[0]
                        w.save!
                    end
                    temp=CitedBy.where(author_id: a[:author_id])
                    if(temp.size==0)
                        scrape_cited_by_from_author_id(a)
                    end
                end
            end
            #pagination increment
            if(start<20)
                start+=20
            else
                return arr
            end
        end
        return arr
    end


#######################################################################################
    #ricerca per ID,riempie tutti i campi author,articles,cited_by
    def scrape_all_by_author_id(auth)
        num=100
        start=0
        while (1) do
            
            begin
                params = {
                    engine: "google_scholar_author",
                    author_id: auth[:author_id],
                    api_key: Rails.application.credentials.api_key,
                    q:'',
                    num:num,
                    start:start
                }
                search = GoogleSearch.new(params)
                author = search.get_hash[:author]
                c = search.get_hash[:cited_by]
                articles = search.get_hash[:articles]
            rescue => exception
                return []
            end
            result=Array.new
            temp=Author.where(author_id: auth[:author_id])
            if(temp.size==0)
                a=Author.new
                a.author_id = auth[:author_id]
                a.name = author[:name]
                a.affiliations = author[:affiliations]
                a.interests = author[:interests]
                result.push(a)
                a.save!
            
            else
                result.push(temp[0]) 
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
            #INSERT CICLO WHILE CHE SCORRE LE PAGINE DELLE PUBLICAZIONI!! 
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
            if search.get_hash.has_key?(:serpapi_pagination)
                start=num
                num+=100
            else
                break
            end
        end
        l=LinkingDependences.new
        l.link_authors_and_cited_by
        return result
    end
############################################################################
    def scrape_cited_by_from_author_id(author)
        temp=CitedBy.where(author_id: author[:author_id])
        if( temp.size==0)
            begin
                params = {
                    engine: "google_scholar_author",
                    author_id: author[:author_id],
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
        b.save!
        l=LinkingDependences.new
        l.link_authors_and_cited_by()
        end
        return true
    end
######################################################################################

    def scrape_publications_from_author_id(author)
        start=0
        num=100
        while (1) do
            begin
                    params ={
                        engine: "google_scholar_author",
                        author_id: author.id,
                        api_key: Rails.application.credentials.api_key,
                        q:'',
                        num:num,
                        start:start
                    }
                
                search = GoogleSearch.new(params)
                print(search.get_hash)
                articles = search.get_hash[:articles]
            rescue => exception
                print exception
                return false
            end
            articles.each do |article|
                temp=Publication.where(publication_id: article[:citation_id])
                temp1=Publication.where(title: article[:title])
                if(temp.size==0 && temp1.size==0)
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
            if search.get_hash.has_key?(:serpapi_pagination)
                start=num
                num+=100
            else
                break
            end
        end
        return true
    end
############################################################################################
    def scrape_author_by_author_id(author_id)
        temp=Author.where(author_id: author_id)
        if(temp.size==0)
            begin
                params = {
                    engine: "google_scholar_author",
                    author_id: author_id,
                    api_key: Rails.application.credentials.api_key,
                    q:''
                }
                search = GoogleSearch.new(params)
                auth = search.get_hash[:author]
            rescue => exception
                print(exception)
                return {}
            end
            
            a=Author.new
            a.author_id = author_id
            a.name = auth[:name]
            a.affiliations = auth[:affiliations]
            a.interests = auth[:interests]
            a.save!
            return a
        else
            a=temp[0]
            return a
        end
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
            scrape_all_by_author_id(author)
        end
    end
    def take_all_profiles_by_searh(search)
        scrape_authors_by_name(search)
    end

end