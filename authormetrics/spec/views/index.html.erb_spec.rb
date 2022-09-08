require "rails_helper"

RSpec.describe "base_authors/:author_id/author_ratings/index.html.erb", type: :view do
    include Rails.application.routes.url_helpers
    #TEST SEED
    before :each do
        user1=User.create(:user_id=>2,:name=>"marco",:username=>"mrcrvl",:surname=>"ruvolo",:birth_date=>"2000-05-02",:email=>"mrccrvl@gmail.com",:password=>"aaaaaaaaaaaa")
        user2=User.create(:user_id=>3,:name=>"tiz",:username=>"tznfnz",:surname=>"fnz",:birth_date=>"2000-05-02",:email=>"tznfnz@gmail.com",:password=>"aaaaaaaaaaaa")
        author=Author.create(author_id: "wT4V7isAAAAJ",                                         
          name: "Mike Wingfield",                                            
          affiliations: "Professor, Forestry and Agricultural Biotechnology Institute (FABI), University of Pretoria",
          interests:"[{:title=>\"forest protection\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Aforest_protection\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:forest_protection\"}, {:title=>\"mycology\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Amycology\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:mycology\"}, {:title=>\"entomology\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Aentomology\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:entomology\"}, {:title=>\"biotechnology\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Abiotechnology\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:biotechnology\"}]"
        )
        author.save!
        user1.save!
        user2.save!
        @r1=AuthorRating.create({:author_rating_id=>2,:author_id=>"wT4V7isAAAAJ",:user_id=>2,:rating=>6})
        @r2=AuthorRating.create({:author_rating_id=>3,:author_id=>"wT4V7isAAAAJ",:user_id=>3,:rating=>6})
        @r1.save!
        @r2.save!
    end
    it "correct authors/" do
        @user=nil
        @author=Author.find("wT4V7isAAAAJ")
        @author_ratings=[@r1,@r2]
        render :template => "author_ratings/index",:author_id=>"wT4V7isAAAAJ",:author_ratings=>@author_ratings
        expect(rendered).to match /tznfnz/
        expect(rendered).to match /mrcrvl/
    end
    it "correctly don't show empty " do
        @user=nil
        @author=Author.find("wT4V7isAAAAJ")
        @author_ratings=[]
        render :template => "author_ratings/index",:author_id=>"wT4V7isAAAAJ",:author_ratings=>@author_ratings
        expect(rendered).to_not match /tznfnz/
        expect(rendered).to_not match /mrcrvl/
    end

    it "correctly show back_to_auth " do
        @user=nil
        @author=Author.find("wT4V7isAAAAJ")
        @author_ratings=[@r1,@r2]
        render :template => "author_ratings/index",:author_id=>"wT4V7isAAAAJ",:author_ratings=>@author_ratings
        expect(rendered).to match /BACK TO AUTHOR/
    end

end

RSpec.describe "advanced_authors/:author_id/author_ratings/index.html.erb", type: :view do
    include Rails.application.routes.url_helpers
    include Devise::Test::ControllerHelpers
    before :each do
        user1=User.create(:user_id=>2,:name=>"marco",:username=>"mrcrvl",:surname=>"ruvolo",:birth_date=>"2000-05-02",:email=>"mrccrvl@gmail.com",:password=>"aaaaaaaaaaaa")
        user2=User.create(:user_id=>3,:name=>"tiz",:username=>"tznfnz",:surname=>"fnz",:birth_date=>"2000-05-02",:email=>"tznfnz@gmail.com",:password=>"aaaaaaaaaaaa")
        author=Author.create(author_id: "wT4V7isAAAAJ",                                         
          name: "Mike Wingfield",                                            
          affiliations: "Professor, Forestry and Agricultural Biotechnology Institute (FABI), University of Pretoria",
          interests:"[{:title=>\"forest protection\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Aforest_protection\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:forest_protection\"}, {:title=>\"mycology\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Amycology\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:mycology\"}, {:title=>\"entomology\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Aentomology\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:entomology\"}, {:title=>\"biotechnology\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Abiotechnology\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:biotechnology\"}]"
        )
        author.save!
        user1.save!
        user2.save!
        @r1=AuthorRating.create({:author_rating_id=>2,:author_id=>"wT4V7isAAAAJ",:user_id=>2,:rating=>6})
        @r2=AuthorRating.create({:author_rating_id=>3,:author_id=>"wT4V7isAAAAJ",:user_id=>3,:rating=>6})
        @r1.save!
        @r2.save!
    end

    it "dont show [new] button if you are auth and you have a rating" do
        @user=User.find(2)
        sign_in @user
        @author=Author.find("wT4V7isAAAAJ")
        @author_ratings=[@r1,@r2]
        render :template => "author_ratings/index",:author_id=>"wT4V7isAAAAJ",:author_ratings=>@author_ratings
        expect(rendered).to_not match /NEW AUTHOR RATING/

    end
    it "show new button if you auth and not have a rating yet" do
        @user=User.find(2)
        sign_in @user
        @author=Author.find("wT4V7isAAAAJ")
        @r1.destroy!
        @author_ratings=[@r2]
        render :template => "author_ratings/index",:author_id=>"wT4V7isAAAAJ",:author_ratings=>@author_ratings
        expect(rendered).to match /NEW AUTHOR RATING/
    end 
    it "dont show [new] button if you not auth" do
        @author=Author.find("wT4V7isAAAAJ")
        @author_ratings=[@r1,@r2]
        render :template => "author_ratings/index",:author_id=>"wT4V7isAAAAJ",:author_ratings=>@author_ratings
        expect(rendered).to_not match /NEW AUTHOR RATING/
    end

    it "show edit rating if you are auth and have a rating" do 
        @user=User.find(2)
        sign_in @user
        @author=Author.find("wT4V7isAAAAJ")
        @author_ratings=[@r1,@r2]
        render :template => "author_ratings/index",:author_id=>"wT4V7isAAAAJ",:author_ratings=>@author_ratings
        expect(rendered).to match /Edit author rating/
    end
    it "dont show edit if you are auth and dont have a rating" do
        @user=User.find(2)
        sign_in @user
        @author=Author.find("wT4V7isAAAAJ")
        @r1.destroy!
        @author_ratings=[@r2]
        render :template => "author_ratings/index",:author_id=>"wT4V7isAAAAJ",:author_ratings=>@author_ratings
        expect(rendered).to_not match /Edit author rating/
    end
    it "dont show edit if you dont auth" do
        @author=Author.find("wT4V7isAAAAJ")
        @author_ratings=[@r1,@r2]
        render :template => "author_ratings/index",:author_id=>"wT4V7isAAAAJ",:author_ratings=>@author_ratings
        expect(rendered).to_not match /Edit author rating/
    end

    it "show destroy rating if you are auth and have a rating" do
        
        @user=User.find(2)
        sign_in @user
        @author=Author.find("wT4V7isAAAAJ")
        @author_ratings=[@r1,@r2]
        render :template => "author_ratings/index",:author_id=>"wT4V7isAAAAJ",:author_ratings=>@author_ratings
        expect(rendered).to match /Destroy rating/
    end
    it "dont show destroy if you are auth and dont have a rating" do
        @user=User.find(2)
        sign_in @user
        @author=Author.find("wT4V7isAAAAJ")
        @r1.destroy!
        @author_ratings=[@r2]
        render :template => "author_ratings/index",:author_id=>"wT4V7isAAAAJ",:author_ratings=>@author_ratings
        expect(rendered).to_not match /Destroy rating/
    end
    it "dont show destroy if you dont auth" do
        @author=Author.find("wT4V7isAAAAJ")
        @author_ratings=[@r1,@r2]
        render :template => "author_ratings/index",:author_id=>"wT4V7isAAAAJ",:author_ratings=>@author_ratings
        expect(rendered).to_not match /Destroy rating/
    end

end
