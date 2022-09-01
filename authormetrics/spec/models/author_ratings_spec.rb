require 'rails_helper'
require 'author_rating'
RSpec.describe AuthorRating, type: :model do

  it "empty object not a valid object" do
    expect(AuthorRating.new).to_not be_valid                                                                                                      
  end     

  it "is not valid without a name"
    
  it "is not valid without a cited_by_id"
end
