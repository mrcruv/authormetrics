require "rails_helper"

RSpec.describe "author_rating/_form", type: :view do
  include Rails.application.routes.url_helpers
  #TEST SEED
  #factory seed
  fixtures :users
  let(:user1) { users(:one) }
  fixtures :authors
  let(:author) {authors(:one)}

end