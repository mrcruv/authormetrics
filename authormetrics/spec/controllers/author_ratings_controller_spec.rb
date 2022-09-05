require 'rails_helper'
require 'author_ratings_controller'

RSpec.describe AuthorRatingsController, type: :controller do
  #TEST 1  NEW/CREATE/SHOW 
  #TEST NEW 
  describe "TEST US 1 create a AuthorRating =>testing method NEW" do
    include Devise::TestHelpers
    before(:each) do
      @user=User.create( user_id: 2, username: "mrcrvl", name: "marco", surname: "ruvolo", birth_date: "2000-05-02", reg_date: "2022-08-08", email: "mrccrvl@gmail.com", provider: nil, uid: nil, roles_mask: nil)
      sign_in @user

      @author=Author.create(
        author_id: "wT4V7isAAAAJ",                                         
        name: "Mike Wingfield",                                            
        affiliations: "Professor, Forestry and Agricultural Biotechnology Institute (FABI), University of Pretoria",
        interests:                                                         
            "[{:title=>\"forest protection\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Aforest_protection\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:forest_protection\"}, {:title=>\"mycology\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Amycology\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:mycology\"}, {:title=>\"entomology\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Aentomology\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:entomology\"}, {:title=>\"biotechnology\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Abiotechnology\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:biotechnology\"}]",
        cited_by_id: nil
      )
      @author.save!
      @author.save!
      
    end

    it "correct initialization" do
      
    end
  end
  #TEST CREATE 
  describe "TEST US 1 create a AuthorRating =>testing method CREATE" do
    #crea istanze di prova
    #UTENTE DEVE ESSERE LOGGATO E CREO DUE OGETTI DI PROVA
    include Devise::TestHelpers
    before(:each) do
      @user=User.create( user_id: 2, username: "mrcrvl", name: "marco", surname: "ruvolo", birth_date: "2000-05-02", reg_date: "2022-08-08", email: "mrccrvl@gmail.com", provider: nil, uid: nil, roles_mask: nil)
      sign_in @user

      @author=Author.create(
        author_id: "wT4V7isAAAAJ",                                         
        name: "Mike Wingfield",                                            
        affiliations: "Professor, Forestry and Agricultural Biotechnology Institute (FABI), University of Pretoria",
        interests:                                                         
            "[{:title=>\"forest protection\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Aforest_protection\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:forest_protection\"}, {:title=>\"mycology\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Amycology\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:mycology\"}, {:title=>\"entomology\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Aentomology\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:entomology\"}, {:title=>\"biotechnology\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Abiotechnology\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:biotechnology\"}]",
        cited_by_id: nil
      )
      @author.save!
      @author.save!
      
    end

    it "test create method for a valid author rating istance" do
      @author_rating=AuthorRating.create({:author_rating_id=>2,:author_id=>"wT4V7isAAAAJ",:user_id=>2,:rating=>6})
      expect(@author_rating).to be_an_instance_of AuthorRating
    end
    it "invalid author rating istance (author_id=nil)" do
      @author_rating=AuthorRating.create({:author_rating_id=>2,:user_id=>2,:rating=>6})
      expect(@author_rating.valid?).to_not be_an_instance_of AuthorRating
    end

    #Bisogna creare metodi tmdb a ui passo io direttamente l'obj o se lo ricava
    #it "show correctly new/created AuthorRatings" do
    #  @author_rating=AuthorRating.create({:author_rating_id=>2,:author_id=>"wT4V7isAAAAJ",:user_id=>2,:rating=>6})
    #  @author_rating.save
    #  @author_rating=double("AuthorRating",:author_rating_id=>2,:author_id=>'wT4V7isAAAAJ',:user_id=>1,:rating=>6)
    #end
    
    #VANNO GESTITE IN REQUESTS!!
=begin
      get :show, params: {author_id: @author_rating.author_id,id: @author_rating.author_rating_id}
      expect(response.status).to eq(200)
      expect(response.body).to render_template("show")
    end
=end
  end
  
  describe "TEST US 1 create a AuthorRating =>testing method SHOW"
=begin
  it "create valid render " do
      @author_rating=double("AuthorRating",:author_rating_id=>2,:author_id=>'wT4V7isAAAAJ',:user_id=>1,:rating=>6)
      get :show, params: {:author_id=>@author_rating.author_id,:id=>@author_rating.author_rating_id}
      expect(response.status).to eq(200)
    end
=end
end
