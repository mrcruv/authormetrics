Canard::Abilities.for(:user) do

    can [:read, :index], Publication
    cannot [:create, :update, :destroy], Publication
  
    can [:read, :index], Author
    cannot [:create, :update, :destroy], Author
  
    can [:create, :destroy, :index], FavoritePublication
    cannot [], FavoritePublication
  
    can [:create, :destroy, :index], FavoriteAuthor
    cannot [], FavoriteAuthor
  
    can [:create, :read, :update, :destroy, :index], PublicationRating
    cannot [], PublicationRating
  
    can [:create, :read, :update, :destroy, :index], AuthorRating
    cannot [], AuthorRating
  
    can [:create, :read, :update, :destroy, :index], Comment
    cannot [], Comment
  
    can [:create, :read, :update, :destroy, :index], Review
    cannot [], Review

    # can [:read], User
    # cannot [], User
end
