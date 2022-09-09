
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

  #TEST SEED
  fixtures :users
  fixtures :authors
  #assign stub models
  let(:user) { users(:one) }
  let(:author) {authors(:one)}

  it "Logging in and add author rating" do
    include Rails.application.routes.url_helpers

    visit '/users/sign_in'
    
    within("#new_user") do
      fill_in 'user_username', with: user.username
      fill_in 'user_password', with: user.encrypted_password
    end
   
    #page.find('input',:exact_text=>"login").click
    #print(page.body)
  end
  
end