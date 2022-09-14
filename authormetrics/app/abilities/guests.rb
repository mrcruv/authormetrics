Canard::Abilities.for(:guest) do

  can [:read, :index], Publication
  cannot [:create, :update, :destroy], Publication

  can [:read, :index], Author
  cannot [:create, :update, :destroy], Author

  can [], FavoritePublication
  cannot [:create, :destroy, :index], FavoritePublication

  can [], FavoriteAuthor
  cannot [:create, :destroy, :index], FavoriteAuthor

  can [:read, :index], PublicationRating
  cannot [:create, :update, :destroy], PublicationRating

  can [:read, :index], AuthorRating
  cannot [:create, :update, :destroy], AuthorRating

  can [:index], Comment
  cannot [:create, :read, :update, :destroy], Comment

  can [:index], Review
  cannot [:create, :read, :update, :destroy], Review

  can [], User
  # create using Devise
  cannot [:create, :read, :update, :destroy, :index], User
  
  can [], Administrator
  cannot [:create, :read, :update, :destroy, :index], Administrator

  can [], BannedUser
  cannot [:create, :read, :update, :destroy, :index], BannedUser
end
