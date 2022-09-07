require "rails_helper"

RSpec.describe "author_ratings/new", type: :view do
    include Rails.application.routes.url_helpers
    include Devise::Test::ControllerHelpers
    before :each do
        user1=User.create(:user_id=>2,:name=>"marco",:username=>"mrcrvl",:surname=>"ruvolo",:birth_date=>"2000-05-02",:email=>"mrccrvl@gmail.com",:password=>"aaaaaaaaaaaa")
        #user2=User.create(:user_id=>3,:name=>"tiz",:username=>"tznfnz",:surname=>"fnz",:birth_date=>"2000-05-02",:email=>"tznfnz@gmail.com",:password=>"aaaaaaaaaaaa")
        author=Author.create(author_id: "wT4V7isAAAAJ",                                         
          name: "Mike Wingfield",                                            
          affiliations: "Professor, Forestry and Agricultural Biotechnology Institute (FABI), University of Pretoria",
          interests:"[{:title=>\"forest protection\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Aforest_protection\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:forest_protection\"}, {:title=>\"mycology\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Amycology\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:mycology\"}, {:title=>\"entomology\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Aentomology\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:entomology\"}, {:title=>\"biotechnology\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Abiotechnology\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:biotechnology\"}]"
        )
        author.save!
        user1.save!
        #user2.save!
=begin
        @r1=AuthorRating.create({:author_rating_id=>2,:author_id=>"wT4V7isAAAAJ",:user_id=>2,:rating=>6})
        @r2=AuthorRating.create({:author_rating_id=>3,:author_id=>"wT4V7isAAAAJ",:user_id=>3,:rating=>6})
        @r1.save!
        @r2.save!
=end
    end

    it "correct render new template and button goBack" do
        @user=User.find(2)
        sign_in @user
        @author=Author.find("wT4V7isAAAAJ")
        @author_rating=AuthorRating.new
        render :template=> "author_ratings/new",:author_id=>"wT4V7isAAAAJ"
        expect(rendered).to match /Back to author ratings/ 
    end
    it "correct render new template and form" do
        @user=User.find(2)
        sign_in @user
        @author=Author.find("wT4V7isAAAAJ")
        @author_rating=AuthorRating.new
        render :template=>"author_ratings/new",:author_id=>"wT4V7isAAAAJ"
        expect(rendered).to render_template(:partial=> "_form")
    end
end