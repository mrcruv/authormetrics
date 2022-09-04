require 'rails_helper'
require 'author_ratings_controller'

RSpec.describe AuthorRatingsController, type: :controller do
  
  describe "TEST US 1 create a AuthorRating" do
    #crea istanze di prova
    include Devise::TestHelpers
    before(:each) do
      @user=User.create( user_id: 2, username: "mrcrvl", name: "marco", surname: "ruvolo", birth_date: "2000-05-02", reg_date: "2022-08-08", email: "mrccrvl@gmail.com", provider: nil, uid: nil, roles_mask: nil)
      sign_in @user

      @author=Author.create(
        author_id: "wT4V7isAAAAJ",                                         
        name: "Mike Wingfield",                                            
        affiliations: "Professor, Forestry and Agricultural Biotechnology Institute (FABI), University of Pretoria",
        interests:                                                         
            "[{:title=>\"forest protection\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Aforest_protection\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:forest_protection\"}, {:title=>\"mycology\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Amycology\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:mycology\"}, {:title=>\"entomology\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Aentomology\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:entomology\"}, {:title=>\"biotechnology\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Abiotechnology\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:biotechnology\"}]",
        cited_by_id: nil
      )
      @author.save!
      @cited_by=CitedBy.create(
        cited_by_id: 8,
        author_id: "wT4V7isAAAAJ",
        all_citations: 62871,
        citations_from_2016: 30283,
        h_index: 113,
        h_from_2016: 71,
        i10_index: 943,
        i10_from_2016: 640,
        graph:
          [{"year"=>1997, "citations"=>194},
            {"year"=>1998, "citations"=>204},
            {"year"=>1999, "citations"=>282},
            {"year"=>2000, "citations"=>332},
            {"year"=>2001, "citations"=>506},
            {"year"=>2002, "citations"=>417},
            {"year"=>2003, "citations"=>519},
            {"year"=>2004, "citations"=>762},
            {"year"=>2005, "citations"=>933},
            {"year"=>2006, "citations"=>1101},
            {"year"=>2007, "citations"=>1287},
            {"year"=>2008, "citations"=>1368},
            {"year"=>2009, "citations"=>1689},
            {"year"=>2010, "citations"=>2045},
            {"year"=>2011, "citations"=>2589},
            {"year"=>2012, "citations"=>2411},
            {"year"=>2013, "citations"=>2816},
            {"year"=>2014, "citations"=>3144},
            {"year"=>2015, "citations"=>3555},
            {"year"=>2016, "citations"=>4941},
            {"year"=>2017, "citations"=>4717},
            {"year"=>2018, "citations"=>4604},
            {"year"=>2019, "citations"=>5252},
            {"year"=>2020, "citations"=>5811},
            {"year"=>2021, "citations"=>6230},
            {"year"=>2022, "citations"=>3620}
          ]
      )
      @cited_by.save!
      @author.save
      
    end
    it "create valid author rating istance" do
      @author_rating=AuthorRating.create({:author_rating_id=>2,:author_id=>"wT4V7isAAAAJ",:user_id=>2,:rating=>6})
      expect(@author_rating).to be_an_instance_of AuthorRating
    end
    it "invalid author rating istance (author_id=nil)" do
      @author_rating=AuthorRating.create({:author_rating_id=>2,:author_id=>nil,:user_id=>2,:rating=>6})
      expect(@author_rating).to be_an_instance_of AuthorRating
    end
    #Bisogna creare metodi tmdb a ui passo io direttamente l'obj o se lo ricava
    #it "show correctly new/created AuthorRatings" do
    #  @author_rating=AuthorRating.create({:author_rating_id=>2,:author_id=>"wT4V7isAAAAJ",:user_id=>2,:rating=>6})
    #  @author_rating.save
    #  @author_rating=double("AuthorRating",:author_rating_id=>2,:author_id=>'wT4V7isAAAAJ',:user_id=>1,:rating=>6)
    #end
    
    #VANNO GESTITE IN REQUESTS!!
=begin
      get :show, params: {author_id: @author_rating.author_id,id: @author_rating.author_rating_id}
      expect(response.status).to eq(200)
      expect(response.body).to render_template("show")
    end
=end
    
  
  end
=begin
  it "create valid render " do
      @author_rating=double("AuthorRating",:author_rating_id=>2,:author_id=>'wT4V7isAAAAJ',:user_id=>1,:rating=>6)
      get :show, params: {:author_id=>@author_rating.author_id,:id=>@author_rating.author_rating_id}
      expect(response.status).to eq(200)
    end
=end
end
