class FavoriteAuthorsController < ApplicationController


  # GET /favorite_authors or /favorite_authors.json
  def index
    @favorite_authors = FavoriteAuthor.all
  end

  # GET /favorite_authors/1 or /favorite_authors/1.json
  def show
    @favorite_author = FavoriteAuthor.find(params[:id_user])
  end

  # GET /favorite_authors/new
  def new
    @user = User
    @favorite_author = FavoriteAuthor.new
  end


  # POST /favorite_authors or /favorite_authors.json
  def create
    @favorite_author = FavoriteAuthor.new(favorite_author_params)

    respond_to do |format|
      if @favorite_author.save
        format.html { redirect_to favorite_author_url(@favorite_author), notice: "Favorite author was successfully created." }
        format.json { render :show, status: :created, location: @favorite_author }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @favorite_author.errors, status: :unprocessable_entity }
      end
    end
  end


  # DELETE /favorite_authors/1 or /favorite_authors/1.json
  def destroy
    @favorite_author.destroy

    respond_to do |format|
      format.html { redirect_to favorite_authors_url, notice: "Favorite author was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_favorite_author
      @favorite_author = FavoriteAuthor.find(params[:user_idS])
    end

    # Only allow a list of trusted parameters through.
    def favorite_author_params
      params.require(:favorite_author).permit(:author_id, :user_id)
    end
end
