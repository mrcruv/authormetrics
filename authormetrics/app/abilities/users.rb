Canard::Abilities.for(:user) do

  can [:read, :index], Publication
  cannot [:create, :update, :destroy], Publication
  
  can [:read, :index], Author
  cannot [:create, :update, :destroy], Author
  
  can [:create, :index], FavoritePublication
  can [:destroy], FavoritePublication, user_id: user.user_id
  cannot [], FavoritePublication
  
  can [:create, :index], FavoriteAuthor
  can [:destroy], FavoriteAuthor, user_id: user.user_id
  cannot [], FavoriteAuthor
  
  can [:create, :read, :index], PublicationRating
  can [:update, :destroy], PublicationRating, user_id: user.user_id
  cannot [], PublicationRating
  
  can [:create, :read, :index], AuthorRating
  can [:update, :destroy], AuthorRating, user_id: user.user_id
  cannot [], AuthorRating
  
  can [:create, :index], Comment
  can [:update, :destroy], Comment, user_id: user.user_id
  cannot [], Comment
  
  can [:create, :index], Review
  can [:update, :destroy], Review, user_id: user.user_id
  cannot [], Review

  can [:index, :read], User
  # can [:update], User, user_id: user.user_id
  # update using Devise
  cannot [:create, :update, :destroy], User
    
  can [], Administrator
  cannot [:create, :read, :update, :destroy, :index], Administrator

  can [], BannedUser
  cannot [:create, :read, :update, :destroy, :index], BannedUser
end
