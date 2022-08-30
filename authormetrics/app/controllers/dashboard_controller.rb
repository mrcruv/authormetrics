class DashboardController < ApplicationController
    def index
        @user= User.where(user_id:current_user.id)[0]
        @latest_pubs= Publication.distinct.order(pub_year: :desc).where.not(pub_year:nil).first(5)
        @most_cited_pubs= Publication.distinct.order(cited_by: :desc).where.not(cited_by:nil).first(5)
        @most_cited_authors= CitedBy.order(all_citations: :desc).where.not(all_citations:nil).first(5)
        @favorite_publications= FavoritePublication.distinct(:publication_id).where(user_id:@user.id)
        @favorite_authors= FavoriteAuthor.distinct(:author_id).where(user_id:@user.id)
        @most_reviewed_by_authors=Review.group(:author_id).count.first(10).sort_by{|x,y| -y}
        @most_commented_pubs=Comment.group(:publication_id).count.first(10).sort_by{|x,y| -y}
        
        if (@favorite_publications !=nil)
            favorite_pubs_ids=[]
            @favorite_publications.each do |favorite_publication|
                favorite_pubs_ids<<favorite_publication.publication_id
            end
        end

        @favorite_authors=FavoriteAuthor.distinct.where(user_id:@user.id) #non capisco perché non me li prende distinti

        if (@favorite_authors != nil)
            favorite_auths_ids=[]
            @favorite_authors.each do |favorite_author|
                favorite_auths_ids<<favorite_author.author_id
            end
        end

        favorite_auths_pubs=Written.where(favorite_auths_ids.include? :author_id)
        
        @latest_pub_fav_auth=[]
        if (favorite_auths_pubs !=nil)
            favorite_auths_pub_ids=[]
            favorite_auths_pubs.each do |favorite_auth_pub|
                favorite_auths_pub_ids<<favorite_auth_pub.publication_id
            end
            @latest_pub_fav_auth=Publication.distinct.order(pub_year: :desc).where.not(pub_year:nil).where(favorite_auths_pub_ids.include? :publication_id).first(10)
        end

        @most_cited_pubs_per_year_data= []

        for year in (Date.today.year - 20.. Date.today.year )
        most_cited=Publication.distinct.order(cited_by: :desc).where(pub_year:year).first()
            if (most_cited != nil)
                @most_cited_pubs_per_year_data << [ year.to_s + ": "+  most_cited.title, most_cited.cited_by]
            end
        end

    end
end
