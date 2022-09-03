require 'rails_helper'
require 'author_ratings_controller'

RSpec.describe AuthorRatingsController, type: :controller do
  
  describe "post /create_tmdb" do

    render_views

    it "create valid response 1 " do
      @author_rating=double("AuthorRating",:author_rating_id=>2,:author_id=>'wT4V7isAAAAJ',:user_id=>1,:rating=>6)
      post :create, :params=> {:author_id=>@author_rating.author_id,:user_id=>@author_rating.user_id}
      expect(response.status).to eq(200)
    end

    it "create valid response template" do
      controller.prepend_view_path 'app/views/author_ratings'
      controller.append_view_path 'app/views/author_ratings'
      @params = {:author_id=>"wT4V7isAAAAJ"}
      post :create, :params=>@params
      expect(response).to be_successful
      print(response.body)
      #expect(response).to render_template :form
    end

    
  
  end
=begin
  it "create valid render " do
      @author_rating=double("AuthorRating",:author_rating_id=>2,:author_id=>'wT4V7isAAAAJ',:user_id=>1,:rating=>6)
      get :show, params: {:author_id=>@author_rating.author_id,:id=>@author_rating.author_rating_id}
      expect(response.status).to eq(200)
    end
=end
end
