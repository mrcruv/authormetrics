require "rails_helper"

RSpec.describe "author_ratings/new", type: :view do
    include Rails.application.routes.url_helpers
    include Devise::Test::ControllerHelpers
    #TEST SEED
    #assign stub models
    fixtures :users
    let(:user) { users(:one) }
    fixtures :authors
    let(:author) {authors(:one)}
   
    

    it "correct render new template and button goBack" do
        @user=user
        sign_in @user
        @author=author
        @author_rating=AuthorRating.new
        render :template=> "author_ratings/new",:author_id=>@author.author_id
        expect(rendered).to match /Back to author ratings/ 
    end
    it "correct render new template and form" do
        @user=user
        sign_in @user
        @author=author
        @author_rating=AuthorRating.new
        render :template=>"author_ratings/new",:author_id=>@author.author_id
        expect(rendered).to render_template(:partial=> "_form")
    end
end