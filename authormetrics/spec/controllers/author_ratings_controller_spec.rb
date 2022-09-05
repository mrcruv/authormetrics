require 'rails_helper'
require 'author_ratings_controller'

RSpec.describe AuthorRatingsController, type: :controller do
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
      @author_rating=AuthorRating.create({:author_rating_id=>2,:author_id=>"wT4V7isAAAAJ",:user_id=>2,:rating=>6})
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
  
  describe "TEST 1.2 AuthorRating: method SHOW"

end
