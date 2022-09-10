require 'rails_helper'
require 'author_ratings_controller'
require_relative "../support/devise"

RSpec.describe AuthorRatingsController, type: :controller do
  #TEST 1  NEW/CREATE/SHOW 
  include Devise::Test::ControllerHelpers
  #TEST NEW 
  describe "TEST 1.1  AuthorRating: method NEW->create" do

    include Devise::Test::ControllerHelpers 
    #factory seed
    fixtures :users
    let(:user1) { users(:one) }
    fixtures :authors
    let(:author) {authors(:one)}
    
    it "correct create new author_rating for logged user" do
      #sign in
      sign_in user1

      #stubbed new rating
      rating =FactoryBot.build(:author_rating)
      rating.user_id=user1.user_id
      rating.author_id=author.author_id

      #call new method
      get :new, params:{:author_id=>author.author_id} 

      #expect rating, 200 , render stubbed view
      expect(assigns(:author_rating))==rating
      expect(response.status).to eq(200)
      expect(response.body).to render_template("new")
      expect(response.body).to render_template("application")

      #called post with manual params
      post :create, params:{:author_id=>author.author_id,:author_rating=>{:user_id=>user1.user_id,:author_id=>author.author_id,:author_rating_id=>2,:rating=>6}}
      
      #expect redirect to index, status 302
      expect(response.status).to eq(302)
      expect(response).to redirect_to("http://test.host/authors/wT4V7isAAAAJ/author_ratings")#index of this author
    end

    it "not allowed to new author ratings" do
      expect{get :new, params:{:author_id=>author.author_id}}.to raise_error(CanCan::AccessDenied)
    end

  end
  describe "TEST 1.2 AuthorRating: method INDEX" do

    include Devise::Test::ControllerHelpers
    #factory seed
    
    
    fixtures :users
    let(:user1) { users(:one) }
    fixtures :authors
    let(:author) {authors(:one)}
    fixtures :author_ratings
    let(:rating1) {author_ratings{:one}}
    let(:rating2) {author_ratings{:two}}
    it "correct function Index for utente_loggato" do
      sign_in user1
      expect{get :index, params: {:author_id=>author.author_id}}.not_to raise_error
      expect(assigns(:author_ratings))==[rating1,rating2]
      expect(response.status).to eq(200)
      expect(response.body).to render_template("index")
      expect(response.body).to render_template("application")
    end

    it "correct function Index for utente_non_loggato" do
      expect{get :index, params: {:author_id=>author.author_id}}.not_to raise_error
      expect(assigns(:author_ratings))==[rating1,rating2]
      expect(response.status).to eq(200)
      expect(response.body).to render_template("index")
      expect(response.body).to render_template("application")
    end

  end

end



RSpec::Expectations.configuration.on_potential_false_positives = :nothing