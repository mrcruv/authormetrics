require 'rails_helper'

=begin
WITH FEATURE TYPE:
  feature is in  an alias for describe  
  background is an alias for 'before',
  scenario for 'it'
=end

RSpec.describe "index navigation", type: :feature do
  include Rails.application.routes.url_helpers
  include Capybara::DSL
  include Capybara::RSpecMatchers

  describe "index utente non loggato" do
    #TEST SEED
    fixtures :users
    fixtures :authors
    fixtures :author_ratings
    #assign stub models
    let(:user) { users(:one) }
    let(:author) {authors(:one)}
    let(:rating1){author_ratings(:one)}

    it "only show index" do
      include Rails.application.routes.url_helpers
      rating1.destroy!
      #NEW RATING
      visit "/"
      expect(page).to have_content "AUTHORS"
      click_button "AUTHORS"
      visit author_path(author)
      expect(page).to have_content "AUTHOR RATINGS"
      click_button "AUTHOR RATINGS"
      expect(page).to_not have_content "NEW AUTHOR RATING"
      expect(page).to_not have_content "Edit author rating"
      expect(page).to_not have_content "Destroy rating"
    end
  end

  describe "utente loggato con rating inserito" do
    #TEST SEED
    fixtures :users
    fixtures :authors
    
    fixtures :author_ratings
    #assign stub models
    let(:user) { users(:one) }
    let(:author) {authors(:one)}
    let(:rating1){author_ratings(:one)}

    it "index author rating with edit destroy " do
        include Rails.application.routes.url_helpers
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
        #CHECK
        expect(page).to_not have_content "NEW AUTHOR RATING"
        expect(page).to have_content "Edit rating"
        expect(page).to have_content "Destroy rating"
    end
    it "index author rating with create" do
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
        #CHECK
        expect(page).to have_content "NEW AUTHOR RATING"
        expect(page).to_not have_content "Edit rating"
        expect(page).to_not have_content "Destroy rating"
    end
  end

end