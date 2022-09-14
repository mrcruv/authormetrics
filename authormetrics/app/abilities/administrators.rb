Canard::Abilities.for(:administrator) do

  can [:read, :index], Publication
  cannot [:create, :update, :destroy], Publication

  can [:read, :index], Author
  cannot [:create, :update, :destroy], Author

  can [:index], FavoritePublication
  cannot [:create, :destroy], FavoritePublication

  can [:index], FavoriteAuthor
  cannot [:create, :destroy], FavoriteAuthor

  can [:read, :index], PublicationRating
  cannot [:create, :update, :destroy], PublicationRating

  can [:read, :index], AuthorRating
  cannot [:create, :update, :destroy], AuthorRating

  can [:read, :update, :destroy, :index], Comment
  cannot [:create], Comment

  can [:read, :update, :destroy, :index], Review
  cannot [:create], Review

  can [:read, :update, :index], User
  cannot [:create, :destroy], User

  can [:index], Administrator
  cannot [:create, :read, :update, :destroy], Administrator

  can [:create, :read, :update, :destroy, :index], BannedUser
  cannot [], BannedUser
end
