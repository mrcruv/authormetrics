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
        @author_rating=FactoryBot.build(:author_rating)
        stub_template "author_ratings/new.html.erb" =>'<h1>New author rating</h1><%= render "form", author_rating: @author_rating %><br>    <div><%= link_to "Back to author ratings", author_author_ratings_path(@author) %></div>'
        stub_template "author_ratings/_form.html.erb" =>'<%= form_with(model: [@author, @author_rating]) do |form| %><% if author_rating.errors.any? %><div style="color: red"><h2><%= pluralize(author_rating.errors.count, "error") %> prohibited this author_rating from being saved:</h2><ul><% author_rating.errors.each do |error| %><li><%= error.full_message %></li><% end %></ul></div><% end %><div><%= form.label :rating, style: "display: block" %><%= form.number_field :rating %></div><div><%= form.submit %></div><% end %>'
        render :template=> "author_ratings/new",:author_id=>@author.author_id
        expect(rendered).to match /Back to author ratings/ 
    end
    it "correct render new template and form" do
        @user=user
        sign_in @user
        @author=author
        @author_rating=FactoryBot.build(:author_rating)
        stub_template "author_ratings/new.html.erb" =>'<h1>New author rating</h1><%= render "form", author_rating: @author_rating %><br>    <div><%= link_to "Back to author ratings", author_author_ratings_path(@author) %></div>'
        stub_template "author_ratings/_form.html.erb" =>'<%= form_with(model: [@author, @author_rating]) do |form| %><% if author_rating.errors.any? %><div style="color: red"><h2><%= pluralize(author_rating.errors.count, "error") %> prohibited this author_rating from being saved:</h2><ul><% author_rating.errors.each do |error| %><li><%= error.full_message %></li><% end %></ul></div><% end %><div><%= form.label :rating, style: "display: block" %><%= form.number_field :rating %></div><div><%= form.submit %></div><% end %>'
        render :template=>"author_ratings/new",:author_id=>@author.author_id
        expect(rendered).to render_template(:partial=> "_form")
    end
end