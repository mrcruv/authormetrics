require 'rails_helper'

#bisogn importare il file del test
require 'author_rating'

RSpec.describe AuthorRating, type: :model do
  fixtures :users
  #factory seed
  let(:user1) { users(:one) }
  let(:user2) { users(:two) }
  fixtures :authors
  let(:author1) {authors(:one)}
  fixtures :author_ratings
  let(:author_rating) { author_ratings(:one) }

  
  it 'valid auhtor_ratings' do
    expect(author_rating).to be_valid
  end
  it 'user_id must not be valid' do
    author_rating.user_id = nil
    expect(author_rating).to_not be_valid
  end

  it "empty object not a valid object" do
    expect(AuthorRating.new).to_not be_valid                                                                                                      
  end     

  it "out of range rating 1" do
    author_rating.rating=0
    expect(author_rating).to_not be_valid
  end

  it "out of range rating 2" do
  
    author_rating.rating=11
    
    expect(author_rating).to_not be_valid
  end

  it "bad format error rating 1" do
    author_rating.rating=1.5
    expect(author_rating).to_not be_valid
  end
  it "bad format error rating 2" do
    author_rating.rating='astrm'
    expect(author_rating).to_not be_valid
  end
  
  it "nil rating error" do
    author_rating.rating=nil
    expect(author_rating).to_not be_valid
  end
  
  it " empty string rating error" do
    author_rating.rating=''
    expect(author_rating).to_not be_valid
  end

  it 'user must exist error' do
    author_rating.user=nil
    expect(author_rating).to_not be_valid
  end

  it 'author must exist error' do
    author_rating.author=nil
    expect(author_rating).to_not be_valid
  end

end
