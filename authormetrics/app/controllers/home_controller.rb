class HomeController < ApplicationController

  def index
    @latest_pubs= Publication.distinct.order(pub_year: :desc).where.not(pub_year:nil).first(5)
    @most_cited_pubs= Publication.distinct.order(cited_by: :desc).where.not(cited_by:nil).first(5)
    @most_cited_authors= CitedBy.order(all_citations: :desc).where.not(all_citations:nil).first(5)
    @most_reviewed_by_authors=Review.group(:author_id).count.first(10).sort_by{|x,y| -y}
    @most_commented_pubs=Comment.group(:publication_id).count.first(10).sort_by{|x,y| -y}
  end

end
