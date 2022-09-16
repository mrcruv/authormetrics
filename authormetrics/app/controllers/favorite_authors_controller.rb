class FavoriteAuthorsController < ApplicationController
  before_action :get_user_author, only: %i[index new create ]


  # GET /favorite_authors or /favorite_authors.json
  def index
    authorize! :index, FavoriteAuthor, :message => "BEWARE: you are not authorized to index favorite authors."
    @favorite_authors = @user.favorite_author
  end

  # GET /favorite_authors/new
  def new
    @favorite_author = @user.favorite_author.build
    @favorite_author.user = @user
    @favorite_author.author = @author
    authorize! :create, @favorite_author, :message => "BEWARE: you are not authorized to create favorite authors."
  end


  # POST /favorite_authors or /favorite_authors.json
  def create
    @favorite_author = @user.favorite_author.build(favorite_author_params)
    @favorite_author.user_id = current_user.id
    authorize! :create, @favorite_author, :message => "BEWARE: you are not authorized to create favorite authors."
    respond_to do |format|
      if @favorite_author.save
        format.html { redirect_to user_favorite_authors_path(@user), notice: "Favorite author was successfully created." }
        format.json { render :show, status: :created, location: @favorite_author }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @favorite_author.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /favorite_authors/1 or /favorite_authors/1.json
  def destroy
    @user = User.find(current_user.id)
    @favorite_author = FavoriteAuthor.find(params[:id])
   
    authorize! :destroy, @favorite_author, :message => "BEWARE: you are not authorized to delete favorite authors."
    @favorite_author.destroy
    redirect_to   user_favorite_authors_path
  end

  private
    def get_user_author
      @user = User.find(current_user.id)
      @favorite_author = FavoriteAuthor.where(user_id: current_user.id, author_id: params[:user_id])[0]
    end 

    # Only allow a list of trusted parameters through.
    def favorite_author_params
      params.require(:favorite_author).permit(:favorite_author_id, :author_id, :user_id)
    end
end
