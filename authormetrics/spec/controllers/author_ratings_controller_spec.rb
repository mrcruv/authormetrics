require 'rails_helper'
require 'author_ratings_controller'

RSpec.describe AuthorRatingsController, type: :controller do
  before :each do
    user=User.create(:user_id=>2,:name=>"marco",:username=>"mrcrvl",:surname=>"ruvolo",:birth_date=>"2000-05-02",:email=>"mrccrvl@gmail.com",:password=>"aaaaaaaaaaaa")
    author=Author.create(author_id: "wT4V7isAAAAJ",                                         
      name: "Mike Wingfield",                                            
      affiliations: "Professor, Forestry and Agricultural Biotechnology Institute (FABI), University of Pretoria",
      interests:"[{:title=>\"forest protection\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Aforest_protection\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:forest_protection\"}, {:title=>\"mycology\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Amycology\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:mycology\"}, {:title=>\"entomology\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Aentomology\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:entomology\"}, {:title=>\"biotechnology\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Abiotechnology\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:biotechnology\"}]"
    )
    author.save!
    user.save!
    author_rating=AuthorRating.create({:author_rating_id=>2,:author_id=>"wT4V7isAAAAJ",:user_id=>2,:rating=>6})
    author_rating.save!
  end
  #TEST 1  NEW/CREATE/SHOW 

  #TEST NEW 
  describe "TEST 1.1  AuthorRating: method NEW" do
    include Devise::Test::ControllerHelpers 
    
    it "correct new author_rating" do
      #initialize example
      @author=Author.find("wT4V7isAAAAJ")
      @user=User.find(2)
      sign_in @user
      #test new method
      get  :new,params:{:author_id=>@author.author_id}
      expect(response.status).to eq(200)
      expect(response.body).to render_template("new")
      expect(response.body).to render_template("application")
    end

  end

  #TEST CREATE 
  describe "TEST 1.2  AuthorRating: method CREATE" do
    include Devise::Test::ControllerHelpers
    
    it "create valid author rating istance" do
      #crea istanze di prova
      @author=Author.find("wT4V7isAAAAJ")
      @user=User.find(2)
      sign_in @user
      @author_rating=AuthorRating.create({:author_rating_id=>3,:author_id=>"wT4V7isAAAAJ",:user_id=>2,:rating=>6})
      expect(@author_rating).to be_an_instance_of AuthorRating
    end
    it "invalid author rating istance (author_id=nil)" do
      @author=Author.find("wT4V7isAAAAJ")
      @user=User.find(2)
      sign_in @user
      @author_rating=AuthorRating.create({:author_rating_id=>2,:user_id=>2,:rating=>6})
      expect(@author_rating.valid?).to_not be_an_instance_of AuthorRating
    end
  end
  
  describe "TEST 1.2 AuthorRating: method INDEX" do
    include Devise::Test::ControllerHelpers
    it "correct function Index for utente_loggato" do
      @user=User.find(2)
      sign_in @user
      get :index, params: {:author_id=>"wT4V7isAAAAJ"}
      expect(response.status).to eq(200)
      expect(response.body).to render_template("index")
      expect(response.body).to render_template("application")
    end
    it "correct function Index for utente_non_loggato" do
      get :index, params: {:author_id=>"wT4V7isAAAAJ"}
      expect(response.status).to eq(200)
      expect(response.body).to render_template("index")
      expect(response.body).to render_template("application")
    end

  end

end
