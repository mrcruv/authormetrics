require 'rails_helper'

#bisogn importare il file del test
require 'author_rating'

RSpec.describe AuthorRating, type: :model do

  it "empty object not a valid object" do
    expect(AuthorRating.new).to_not be_valid                                                                                                      
  end     

  it "out of range rating 1" do
    r=AuthorRating.new
    r.rating=0
    r.user=User.new
    r.author=Author.new
    expect(r).to_not be_valid
  end

  it "out of range rating 2" do
    r=AuthorRating.new
    r.rating=11
    r.user=User.new
    r.author=Author.new
    expect(r).to_not be_valid
  end

  it "bad format error rating 1" do
    r=AuthorRating.new
    r.rating=1.5
    r.user=User.new
    r.author=Author.new
    expect(r).to_not be_valid
  end
  it "bad format error rating 2" do
    r=AuthorRating.new
    r.rating='astrm'
    r.user=User.new
    r.author=Author.new
    expect(r).to_not be_valid
  end
  it "good format rating" do
    r=AuthorRating.new
    r.rating=6
    r.user=User.create(:user_id=>2,:name=>"marco",:username=>"mrcrvl",:surname=>"ruvolo",:birth_date=>"2000-05-02",:email=>"mrccrvl@gmail.com",:password=>"aaaaaaaaaaaa")
    r.author=Author.create(author_id: "wT4V7isAAAAJ",                                         
      name: "Mike Wingfield",                                            
      affiliations: "Professor, Forestry and Agricultural Biotechnology Institute (FABI), University of Pretoria",
      interests:"[{:title=>\"forest protection\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Aforest_protection\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:forest_protection\"}, {:title=>\"mycology\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Amycology\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:mycology\"}, {:title=>\"entomology\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Aentomology\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:entomology\"}, {:title=>\"biotechnology\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Abiotechnology\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:biotechnology\"}]"
    )
    expect(r).to be_valid
  end
  it "nil rating error" do
    r=AuthorRating.new
    r.rating=nil
    r.user=User.new
    r.author=Author.new
    expect(r).to_not be_valid
  end
  
  it " empty string rating error" do
    r=AuthorRating.new
    r.rating=''
    r.user=User.new
    r.author=Author.new
    expect(r).to_not be_valid
  end

  it 'user must exist error' do
    r=AuthorRating.new
    r.rating=6
    r.user=nil
    r.author=Author.new
    expect(r).to_not be_valid
  end

  it 'author must exist error' do
    r=AuthorRating.new
    r.rating=6
    r.user=User.new
    r.author=nil
    expect(r).to_not be_valid
  end

end
