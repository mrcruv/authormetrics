class ControlPanelController < ApplicationController
  before_action :check_authorization, only: %i[ index ]

  def index
    @latest_pubs= Publication.distinct.order(pub_year: :desc).where.not(pub_year:nil).first(5)
    @most_cited_pubs= Publication.distinct.order(cited_by: :desc).where.not(cited_by:nil).first(5)
    @most_cited_authors= CitedBy.order(all_citations: :desc).where.not(all_citations:nil).first(5)
    @latest_comments=Comment.distinct.order(:comment_timestamp).first(10)
    @latest_reviews=Review.distinct.order(:review_timestamp).first(10)
  end

  def check_authorization()
    if not administrator_signed_in?
        redirect_to "/"
    end
  end
end
