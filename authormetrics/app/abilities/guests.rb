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

  can [:read, :index], Comment
  cannot [:create, :update, :destroy], Comment

  can [:read, :index], Review
  cannot [:create, :update, :destroy], Review

  can [:index, :read], User
  cannot [:create, :update, :destroy], User
  
  can [], Administrator
  cannot [:create, :read, :update, :destroy, :index], Administrator

  can [], BannedUser
  cannot [:create, :read, :update, :destroy, :index], BannedUser
end
