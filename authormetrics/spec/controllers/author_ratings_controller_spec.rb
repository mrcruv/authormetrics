require 'rails_helper'
require 'author_ratings_controller'
require_relative "../support/devise"



RSpec.describe AuthorRatingsController, type: :controller do
  #TEST 1  NEW/CREATE/SHOW 
  include Devise::Test::ControllerHelpers
  #TEST NEW 
  describe "TEST 1.1  AuthorRating: method NEW->create" do

    include Devise::Test::ControllerHelpers 

    controller do
      before_action :get_author_user
      def new
        @author_rating = @author.author_rating.build
        @author_rating.user=@user
        @author_rating.author=@author
        authorize! :create, @author_rating, :message => "BEWARE: you are not authorized to create author ratings."
      end
      def create
        @author_rating = @author.author_rating.build(author_rating_params)
        @author_rating.user_id=current_user.id
        authorize! :create, @author_rating,:message => "BEWARE: you are not authorized to create author ratings."
        respond_to do |format|
          if @author_rating.save
            format.html { redirect_to author_author_ratings_path(@author), notice: "Author rating was successfully created." }
            format.json { render :show, status: :created, location: @author_rating }
          else
            format.html { render :new, status: :unprocessable_entity }
            format.json { render json: @author_rating.errors, status: :unprocessable_entity }
          end
        end
      end
      private
      def get_author_user
        @author=Author.find(params[:author_id])
        if current_user!=nil
          @user=User.find(current_user.id)
        end 
      end
      def author_rating_params
        params.require(:author_rating).permit(:author_rating_id,:rating, :author_id, :user_id)
      end
    end

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


  end
  describe "TEST 1.2 AuthorRating: method INDEX" do

    include Devise::Test::ControllerHelpers

    controller do
      before_action :get_author_user
      def index
        authorize! :index, AuthorRating, :message => "BEWARE: you are not authorized to index author ratings."
        @author_ratings=@author.author_rating
      end
      private
      def get_author_user
        @author=Author.find(params[:author_id])
        if current_user!=nil
          @user=User.find(current_user.id)
        end 
      end
      def author_rating_params
        params.require(:author_rating).permit(:author_rating_id,:rating, :author_id, :user_id)
      end
    end
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