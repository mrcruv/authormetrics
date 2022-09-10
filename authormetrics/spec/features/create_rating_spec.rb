
require 'rails_helper'

=begin
WITH FEATURE TYPE:
  feature is in  an alias for describe  
  background is an alias for 'before',
  scenario for 'it'
=end

RSpec.describe "create rating process", type: :feature do
  include Rails.application.routes.url_helpers
  include Capybara::DSL
  include Capybara::RSpecMatchers

  describe "correct insert new author rating" do
    #TEST SEED
    fixtures :users
    fixtures :authors
    fixtures :author_ratings
    #assign stub models
    let(:user) { users(:one) }
    let(:author) {authors(:one)}
    let(:rating1){author_ratings(:one)}

    it "Logging in and add author rating" do
      include Rails.application.routes.url_helpers
      rating1.destroy!
      #LOGIN
      @user=user
      login_as @user, scope: :user
      #NEW RATING
      visit "/"
      expect(page).to have_content "AUTHORS"
      click_button "AUTHORS"
      visit author_path(author)
      expect(page).to have_content "AUTHOR RATINGS"
      click_button "AUTHOR RATINGS"
      print(page.body)
      expect(page).to have_content "NEW AUTHOR RATING"
      click_link "NEW AUTHOR RATING"
      #CREATE PHASE
      fill_in "author_rating_rating", with: 6
      click_button "create rating"
      #CHECK
      expect(page).to have_content "Edit author rating"
      expect(page).to have_content "Destroy rating"
    end
  end
  
end