require "rails_helper"

RSpec.describe "base_authors/:author_id/author_ratings/index.html.erb", type: :view do
    include Rails.application.routes.url_helpers

    #factory seed
    fixtures :users
    let(:user1) { users(:one) }
    fixtures :authors
    let(:author) {authors(:one)}
    fixtures :author_ratings
    let(:author_rating1) { author_ratings(:one) }
    let(:author_rating2) { author_ratings(:two) }

    it "correct authors/" do
        @user=nil
        @author=author
        @author_ratings=[author_rating1,author_rating2]
        stub_template "author_ratings/index.html.erb" => "<p style='color: green'><%= notice %></p><h1>Author ratings</h1><%if(@user!=nil)%><% if (AuthorRating.where(author_id:@author.author_id,user_id:@user.user_id)==[] || AuthorRating.where(author_id:@author.author_id,user_id:@user.user_id)==nil)%><button><%= link_to 'NEW AUTHOR RATING', new_author_author_rating_path(@author)%></button><%end%>       <%end%><button><%=link_to 'BACK TO AUTHOR',[@author] %></button><div id='author_ratings'><% @author_ratings.each do |author_rating| %><%= render author_rating %><%if(@user!=nil)%><%if @user.user_id==author_rating.user_id%><p><%= link_to 'Edit author rating', edit_author_author_rating_path(author_rating.author_id,author_rating.user_id)%><%= link_to 'Destroy rating', destroy_author_author_rating_path(author_rating.author_id,author_rating.user_id), method: :delete %></p><%end%><%end%><% end %></div>"
        render :template => "author_ratings/index",:author_id=>@author.author_id,:author_ratings=>@author_ratings
        expect(rendered).to match /tznfnz/
        expect(rendered).to match /mrcrvl/
    end
    it "correctly don't show empty " do
        @user=nil
        @author=author
        @author_ratings=[]
        stub_template "author_ratings/index.html.erb" => "<p style='color: green'><%= notice %></p><h1>Author ratings</h1><%if(@user!=nil)%><% if (AuthorRating.where(author_id:@author.author_id,user_id:@user.user_id)==[] || AuthorRating.where(author_id:@author.author_id,user_id:@user.user_id)==nil)%><button><%= link_to 'NEW AUTHOR RATING', new_author_author_rating_path(@author)%></button><%end%>       <%end%><button><%=link_to 'BACK TO AUTHOR',[@author] %></button><div id='author_ratings'><% @author_ratings.each do |author_rating| %><%= render author_rating %><%if(@user!=nil)%><%if @user.user_id==author_rating.user_id%><p><%= link_to 'Edit author rating', edit_author_author_rating_path(author_rating.author_id,author_rating.user_id)%><%= link_to 'Destroy rating', destroy_author_author_rating_path(author_rating.author_id,author_rating.user_id), method: :delete %></p><%end%><%end%><% end %></div>"
        render :template => "author_ratings/index",:author_id=>@author.author_id,:author_ratings=>@author_ratings
        expect(rendered).to_not match /tznfnz/
        expect(rendered).to_not match /mrcrvl/
    end

    it "correctly show back_to_auth " do
        @user=nil
        @author=author
        @author_ratings=[author_rating1,author_rating2]
        stub_template "author_ratings/index.html.erb" => "<p style='color: green'><%= notice %></p><h1>Author ratings</h1><%if(@user!=nil)%><% if (AuthorRating.where(author_id:@author.author_id,user_id:@user.user_id)==[] || AuthorRating.where(author_id:@author.author_id,user_id:@user.user_id)==nil)%><button><%= link_to 'NEW AUTHOR RATING', new_author_author_rating_path(@author)%></button><%end%>       <%end%><button><%=link_to 'BACK TO AUTHOR',[@author] %></button><div id='author_ratings'><% @author_ratings.each do |author_rating| %><%= render author_rating %><%if(@user!=nil)%><%if @user.user_id==author_rating.user_id%><p><%= link_to 'Edit author rating', edit_author_author_rating_path(author_rating.author_id,author_rating.user_id)%><%= link_to 'Destroy rating', destroy_author_author_rating_path(author_rating.author_id,author_rating.user_id), method: :delete %></p><%end%><%end%><% end %></div>"
        render :template => "author_ratings/index",:author_id=>@author.author_id,:author_ratings=>@author_ratings
        expect(rendered).to match /BACK TO AUTHOR/
    end
    describe "Base Correct render selector " do
        include Devise::Test::ControllerHelpers

        it "dont show [new] button if you are auth and you have a rating" do
            @user=user1
            sign_in @user
            @author=author
            @author_ratings=[author_rating1,author_rating2]
            stub_template "author_ratings/index.html.erb" => "<p style='color: green'><%= notice %></p><h1>Author ratings</h1><%if(@user!=nil)%><% if (AuthorRating.where(author_id:@author.author_id,user_id:@user.user_id)==[] || AuthorRating.where(author_id:@author.author_id,user_id:@user.user_id)==nil)%><button><%= link_to 'NEW AUTHOR RATING', new_author_author_rating_path(@author)%></button><%end%>       <%end%><button><%=link_to 'BACK TO AUTHOR',[@author] %></button><div id='author_ratings'><% @author_ratings.each do |author_rating| %><%= render author_rating %><%if(@user!=nil)%><%if @user.user_id==author_rating.user_id%><p><%= link_to 'Edit author rating', edit_author_author_rating_path(author_rating.author_id,author_rating.user_id)%><%= link_to 'Destroy rating', destroy_author_author_rating_path(author_rating.author_id,author_rating.user_id), method: :delete %></p><%end%><%end%><% end %></div>"
            render :template => "author_ratings/index",:author_id=>@author.author_id,:author_ratings=>@author_ratings
            expect(rendered).to_not match /NEW AUTHOR RATING/

        end
        
        it "dont show [new] button if you not auth" do
            @author=author
            @author_ratings=[author_rating1,author_rating2]
            stub_template "author_ratings/index.html.erb" => "<p style='color: green'><%= notice %></p><h1>Author ratings</h1><%if(@user!=nil)%><% if (AuthorRating.where(author_id:@author.author_id,user_id:@user.user_id)==[] || AuthorRating.where(author_id:@author.author_id,user_id:@user.user_id)==nil)%><button><%= link_to 'NEW AUTHOR RATING', new_author_author_rating_path(@author)%></button><%end%>       <%end%><button><%=link_to 'BACK TO AUTHOR',[@author] %></button><div id='author_ratings'><% @author_ratings.each do |author_rating| %><%= render author_rating %><%if(@user!=nil)%><%if @user.user_id==author_rating.user_id%><p><%= link_to 'Edit author rating', edit_author_author_rating_path(author_rating.author_id,author_rating.user_id)%><%= link_to 'Destroy rating', destroy_author_author_rating_path(author_rating.author_id,author_rating.user_id), method: :delete %></p><%end%><%end%><% end %></div>"
            render :template => "author_ratings/index",:author_id=>@author.author_id,:author_ratings=>@author_ratings
            expect(rendered).to_not match /NEW AUTHOR RATING/
        end

        it "show edit rating if you are auth and have a rating" do 
            @user=user1
            sign_in @user
            @author=author
            @author_ratings=[author_rating1,author_rating2]
            stub_template "author_ratings/index.html.erb" => "<p style='color: green'><%= notice %></p><h1>Author ratings</h1><%if(@user!=nil)%><% if (AuthorRating.where(author_id:@author.author_id,user_id:@user.user_id)==[] || AuthorRating.where(author_id:@author.author_id,user_id:@user.user_id)==nil)%><button><%= link_to 'NEW AUTHOR RATING', new_author_author_rating_path(@author)%></button><%end%>       <%end%><button><%=link_to 'BACK TO AUTHOR',[@author] %></button><div id='author_ratings'><% @author_ratings.each do |author_rating| %><%= render author_rating %><%if(@user!=nil)%><%if @user.user_id==author_rating.user_id%><p><%= link_to 'Edit author rating', edit_author_author_rating_path(author_rating.author_id,author_rating.user_id)%><%= link_to 'Destroy rating', destroy_author_author_rating_path(author_rating.author_id,author_rating.user_id), method: :delete %></p><%end%><%end%><% end %></div>"
            render :template => "author_ratings/index",:author_id=>@author.author_id,:author_ratings=>@author_ratings
            expect(rendered).to match /Edit author rating/
        end
        
        it "dont show edit if you dont auth" do
            @author=author
            @author_ratings=[author_rating1,author_rating2]
            stub_template "author_ratings/index.html.erb" => "<p style='color: green'><%= notice %></p><h1>Author ratings</h1><%if(@user!=nil)%><% if (AuthorRating.where(author_id:@author.author_id,user_id:@user.user_id)==[] || AuthorRating.where(author_id:@author.author_id,user_id:@user.user_id)==nil)%><button><%= link_to 'NEW AUTHOR RATING', new_author_author_rating_path(@author)%></button><%end%>       <%end%><button><%=link_to 'BACK TO AUTHOR',[@author] %></button><div id='author_ratings'><% @author_ratings.each do |author_rating| %><%= render author_rating %><%if(@user!=nil)%><%if @user.user_id==author_rating.user_id%><p><%= link_to 'Edit author rating', edit_author_author_rating_path(author_rating.author_id,author_rating.user_id)%><%= link_to 'Destroy rating', destroy_author_author_rating_path(author_rating.author_id,author_rating.user_id), method: :delete %></p><%end%><%end%><% end %></div>"
            render :template => "author_ratings/index",:author_id=>@author.author_id,:author_ratings=>@author_ratings
            expect(rendered).to_not match /Edit author rating/
        end

        it "show destroy rating if you are auth and have a rating" do
            @user=user1
            sign_in @user
            @author=author
            @author_ratings=[author_rating1,author_rating2]
            stub_template "author_ratings/index.html.erb" => "<p style='color: green'><%= notice %></p><h1>Author ratings</h1><%if(@user!=nil)%><% if (AuthorRating.where(author_id:@author.author_id,user_id:@user.user_id)==[] || AuthorRating.where(author_id:@author.author_id,user_id:@user.user_id)==nil)%><button><%= link_to 'NEW AUTHOR RATING', new_author_author_rating_path(@author)%></button><%end%>       <%end%><button><%=link_to 'BACK TO AUTHOR',[@author] %></button><div id='author_ratings'><% @author_ratings.each do |author_rating| %><%= render author_rating %><%if(@user!=nil)%><%if @user.user_id==author_rating.user_id%><p><%= link_to 'Edit author rating', edit_author_author_rating_path(author_rating.author_id,author_rating.user_id)%><%= link_to 'Destroy rating', destroy_author_author_rating_path(author_rating.author_id,author_rating.user_id), method: :delete %></p><%end%><%end%><% end %></div>"
            render :template => "author_ratings/index",:author_id=>"wT4V7isAAAAJ",:author_ratings=>@author_ratings
            expect(rendered).to match /Destroy rating/
        end
        
        it "dont show destroy if you dont auth" do
            @author=author
            @author_ratings=[author_rating1,author_rating2]
            stub_template "author_ratings/index.html.erb" => "<p style='color: green'><%= notice %></p><h1>Author ratings</h1><%if(@user!=nil)%><% if (AuthorRating.where(author_id:@author.author_id,user_id:@user.user_id)==[] || AuthorRating.where(author_id:@author.author_id,user_id:@user.user_id)==nil)%><button><%= link_to 'NEW AUTHOR RATING', new_author_author_rating_path(@author)%></button><%end%>       <%end%><button><%=link_to 'BACK TO AUTHOR',[@author] %></button><div id='author_ratings'><% @author_ratings.each do |author_rating| %><%= render author_rating %><%if(@user!=nil)%><%if @user.user_id==author_rating.user_id%><p><%= link_to 'Edit author rating', edit_author_author_rating_path(author_rating.author_id,author_rating.user_id)%><%= link_to 'Destroy rating', destroy_author_author_rating_path(author_rating.author_id,author_rating.user_id), method: :delete %></p><%end%><%end%><% end %></div>"
            render :template => "author_ratings/index",:author_id=>"wT4V7isAAAAJ",:author_ratings=>@author_ratings
            expect(rendered).to_not match /Destroy rating/
        end
    end
end

RSpec.describe "Advanced Correct render selector", type: :view do
    include Rails.application.routes.url_helpers
    include Devise::Test::ControllerHelpers
    #stub models
    #factory seed    
    fixtures :users
    let(:user1) { users(:one) }
    let(:user2) { users(:two) }
    fixtures :authors
    let(:author) {authors(:one)}
    fixtures :author_ratings
    let(:author_rating2) { author_ratings(:two) }
    let(:author_rating1){author_ratings(:one) }
    
         
    
    it "show new button if you auth and not have a rating yet" do
        author_rating1.destroy!
        @user=user1
        sign_in @user
        @author=author
        @author_ratings=[author_rating2]
        stub_template "author_ratings/index.html.erb" => "<p style='color: green'><%= notice %></p><h1>Author ratings</h1><%if(@user!=nil)%><% if (AuthorRating.where(author_id:@author.author_id,user_id:@user.user_id)==[] || AuthorRating.where(author_id:@author.author_id,user_id:@user.user_id)==nil)%><button><%= link_to 'NEW AUTHOR RATING', new_author_author_rating_path(@author)%></button><%end%>       <%end%><button><%=link_to 'BACK TO AUTHOR',[@author] %></button><div id='author_ratings'><% @author_ratings.each do |author_rating| %><%= render author_rating %><%if(@user!=nil)%><%if @user.user_id==author_rating.user_id%><p><%= link_to 'Edit author rating', edit_author_author_rating_path(author_rating.author_id,author_rating.user_id)%><%= link_to 'Destroy rating', destroy_author_author_rating_path(author_rating.author_id,author_rating.user_id), method: :delete %></p><%end%><%end%><% end %></div>"
        render :template => "author_ratings/index",:author_id=>@author.author_id,:author_ratings=>@author_ratings
        expect(rendered).to match /NEW AUTHOR RATING/
    end 
    it "dont show edit if you are auth and dont have a rating" do
        author_rating1.destroy!
        @user=user1
        sign_in @user
        @author=author
        @author_ratings=[author_rating2]
        stub_template "author_ratings/index.html.erb" => "<p style='color: green'><%= notice %></p><h1>Author ratings</h1><%if(@user!=nil)%><% if (AuthorRating.where(author_id:@author.author_id,user_id:@user.user_id)==[] || AuthorRating.where(author_id:@author.author_id,user_id:@user.user_id)==nil)%><button><%= link_to 'NEW AUTHOR RATING', new_author_author_rating_path(@author)%></button><%end%>       <%end%><button><%=link_to 'BACK TO AUTHOR',[@author] %></button><div id='author_ratings'><% @author_ratings.each do |author_rating| %><%= render author_rating %><%if(@user!=nil)%><%if @user.user_id==author_rating.user_id%><p><%= link_to 'Edit author rating', edit_author_author_rating_path(author_rating.author_id,author_rating.user_id)%><%= link_to 'Destroy rating', destroy_author_author_rating_path(author_rating.author_id,author_rating.user_id), method: :delete %></p><%end%><%end%><% end %></div>"
        render :template => "author_ratings/index",:author_id=>@author.author_id,:author_ratings=>@author_ratings
        expect(rendered).to_not match /Edit author rating/
    end
    it "dont show destroy if you are auth and dont have a rating" do
        author_rating1.destroy!
        @user=user1
        sign_in @user
        @author=author
        @author_ratings=[author_rating2]
        stub_template "author_ratings/index.html.erb" => "<p style='color: green'><%= notice %></p><h1>Author ratings</h1><%if(@user!=nil)%><% if (AuthorRating.where(author_id:@author.author_id,user_id:@user.user_id)==[] || AuthorRating.where(author_id:@author.author_id,user_id:@user.user_id)==nil)%><button><%= link_to 'NEW AUTHOR RATING', new_author_author_rating_path(@author)%></button><%end%>       <%end%><button><%=link_to 'BACK TO AUTHOR',[@author] %></button><div id='author_ratings'><% @author_ratings.each do |author_rating| %><%= render author_rating %><%if(@user!=nil)%><%if @user.user_id==author_rating.user_id%><p><%= link_to 'Edit author rating', edit_author_author_rating_path(author_rating.author_id,author_rating.user_id)%><%= link_to 'Destroy rating', destroy_author_author_rating_path(author_rating.author_id,author_rating.user_id), method: :delete %></p><%end%><%end%><% end %></div>"
        render :template => "author_ratings/index",:author_id=>@author.author_id,:author_ratings=>@author_ratings
        expect(rendered).to_not match /Destroy rating/
    end
end


