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

  can [:read, :update, :destroy, :index], Comment
  cannot [:create], Comment

  can [:read, :update, :destroy, :index], Review
  cannot [:create], Review

  # can [:read, :update, :index], User
  # cannot [], User

  # + BAN / SBAN USERS
end
