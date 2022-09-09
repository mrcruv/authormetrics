require 'rails_helper'
require 'author_ratings_controller'

RSpec.describe AuthorRatingsController, type: :controller do
  #TEST 1  NEW/CREATE/SHOW 

  #TEST NEW 
  describe "TEST 1.1  AuthorRating: method NEW" do

    include Devise::Test::ControllerHelpers 
    #factory seed
    fixtures :users
    let(:user1) { users(:one) }
    let(:user2) { users(:two) }
    fixtures :authors
    let(:author) {authors(:one)}
    
    it "correct new author_rating for logged user" do
      sign_in user1
      #test new method
      get :new, params:{:author_id=>author.author_id}
      expect(response.status).to eq(200)
      expect(response.body).to render_template("new")
      expect(response.body).to render_template("application")
    end
    it "not allowed to new author ratings" do
      expect{get :new, params:{:author_id=>author.author_id}}.to raise_error(CanCan::AccessDenied)
    end

  end

  #TEST CREATE 
  describe "TEST 1.2  AuthorRating: method CREATE" do

    include Devise::Test::ControllerHelpers
    #factory seed
    fixtures :users
    let(:user1) { users(:one) }
    fixtures :authors
    let(:author) {authors(:one)}
    fixtures :author_ratings
    let(:author_rating) { author_ratings(:one) }

    it "unauthenticate user not allowed to create ratings" do
      #crea istanze di prova
      expect{post :create,params:{:author_id=>author.author_id}}.to raise_error(CanCan::AccessDenied)
    end
    it "authenticate user allowed to create ratings" do
      sign_in user1
      expect{post :create,params:{:author_id=>author.author_id,:author_rating=>auhtor_rating}}.not_to raise_error(CanCan::AccessDenied)
    end
  end
  
  describe "TEST 1.2 AuthorRating: method INDEX" do

    include Devise::Test::ControllerHelpers
    #factory seed
    fixtures :users
    let(:user1) { users(:one) }
    fixtures :authors
    let(:author) {authors(:one)}

    it "correct function Index for utente_loggato" do
      
      sign_in user1
      expect{get :index, params: {:author_id=>author.author_id}}.to_not raise_error
      expect(response.status).to eq(200)
      expect(response.body).to render_template("index")
      expect(response.body).to render_template("application")
    end
    it "correct function Index for utente_non_loggato" do
      expect{get :index, params: {:author_id=>author.author_id}}.to_not raise_error
      expect(response.status).to eq(200)
      expect(response.body).to render_template("index")
      expect(response.body).to render_template("application")
    end

  end

end
