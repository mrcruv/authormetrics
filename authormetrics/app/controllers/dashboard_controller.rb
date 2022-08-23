class DashboardController < ApplicationController
    def index
        @user= User.where(user_id:current_user.id)[0]
        @latest_pubs= Publication.distinct.order(pub_year: :desc).where.not(pub_year:nil).first(5)
        @most_cited_pubs= Publication.distinct.order(cited_by: :desc).where.not(cited_by:nil).first(5)
        @most_cited_authors= CitedBy.order(all_citations: :desc).where.not(all_citations:nil).first(5)
    end
end
