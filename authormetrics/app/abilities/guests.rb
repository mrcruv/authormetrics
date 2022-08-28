Canard::Abilities.for(:guest) do
  # Define abilities for the user role here. For example:
  #
  #   if user.admin?
  #     can :manage, :all
  #   else
  #     can :read, :all
  #   end
  #
  # The first argument to `can` is the action you are giving the user permission to do.
  # If you pass :manage it will apply to every action. Other common actions here are
  # :read, :create, :update and :destroy.
  #
  # The second argument is the resource the user can perform the action on. If you pass
  # :all it will apply to every resource. Otherwise pass a Ruby class of the resource.
  #
  # The third argument is an optional hash of conditions to further filter the objects.
  # For example, here the user can only update published articles.
  #
  #   can :update, Article, published: true
  #
  # See the wiki for details: https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities

  can [:read, :index], Publication
  cannot [:create, :update, :destroy], Publication

  can [:read, :index], Author
  cannot [:create, :update, :destroy], Author

  can [], FavoritePublication
  cannot [:create, :destroy, :index], FavoritePublication

  can [], FavoriteAuthor
  cannot [:create, :destroy, :index], FavoriteAuthor

  can [:index], PublicationRating
  cannot [:create, :read, :update, :destroy], PublicationRating

  can [:index], AuthorRating
  cannot [:create, :read, :update, :destroy], AuthorRating

  can [:index], Comment
  cannot [:create, :read, :update, :destroy], Comment

  can [:index], Review
  cannot [:create, :read, :update, :destroy], Review

  # can [:create, :index], User
  # cannot [:read, :update, :destroy], User
end
