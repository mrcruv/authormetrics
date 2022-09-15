Canard::Abilities.for(:administrator) do

  can [:read, :index], Publication
  cannot [:create, :update, :destroy], Publication

  can [:read, :index], Author
  cannot [:create, :update, :destroy], Author

  can [], FavoritePublication
  cannot [:create, :destroy, :index], FavoritePublication

  can [], FavoriteAuthor
  cannot [:create, :destroy, :index], FavoriteAuthor

  can [], PublicationRating
  cannot [:create, :read, :update, :destroy, :index], PublicationRating

  can [], AuthorRating
  cannot [:create, :read, :update, :destroy, :index], AuthorRating

  can [:read, :destroy, :index], Comment
  cannot [:create, :update], Comment

  can [:read, :destroy, :index], Review
  cannot [:create, :update], Review

  can [:read, :index], User
  cannot [:create, :update, :destroy], User

  can [:read, :index], Administrator
  cannot [:create, :read, :update, :destroy], Administrator

  can [:create, :read, :update, :destroy, :index], BannedUser
  cannot [], BannedUser
end
