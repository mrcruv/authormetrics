

Given(/^Login$/) do
    visit "https://127.0.0.1:3000/users/sign_in"
    @user=User.create(:user_id=>2,:name=>"marco",:username=>"mrcrvl",:surname=>"ruvolo",:birth_date=>"2000-05-02",:email=>"mrccrvl@gmail.com",:password=>"aaaaaaaaaaaa")
    @user.save!
    fill_in "user_username", :with => @user.username
    fill_in "user_password", :with => @user.password
    click_button "Log in"
end
When /author/ do
    @author=Author.create(author_id: "wT4V7isAAAAJ",                                         
        name: "Mike Wingfield",                                            
        affiliations: "Professor, Forestry and Agricultural Biotechnology Institute (FABI), University of Pretoria",
        interests:"[{:title=>\"forest protection\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Aforest_protection\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:forest_protection\"}, {:title=>\"mycology\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Amycology\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:mycology\"}, {:title=>\"entomology\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Aentomology\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:entomology\"}, {:title=>\"biotechnology\", :serpapi_link=>\"https://serpapi.com/search.json?engine=google_scholar_profiles&hl=en&mauthors=label%3Abiotechnology\", :link=>\"https://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors=label:biotechnology\"}]"
    )
    @author.save!
    visit "https://127.0.0.1:3000/authors/"
    
    click_button 'AUTHOR RATING'
end

Then(/ADD AUTHOR RATING/) do |text|
    if (driver.getCurrentUrl() === "https://127.0.0.1:3000/authors/g-A98gYAAAAJ/author_ratings") 
        click_button 'BACK TO AUTHOR'
    end
end