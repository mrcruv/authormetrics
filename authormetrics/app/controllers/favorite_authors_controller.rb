class FavoriteAuthorsController < ApplicationController
  before_action :set_favorite_author, only: %i[ show edit update destroy ]

  # GET /favorite_authors or /favorite_authors.json
  def index
    @favorite_authors = FavoriteAuthor.all
  end

  # GET /favorite_authors/1 or /favorite_authors/1.json
  def show
  end

  # GET /favorite_authors/new
  def new
    @favorite_author = FavoriteAuthor.new
  end

  # GET /favorite_authors/1/edit
  def edit
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

  # PATCH/PUT /favorite_authors/1 or /favorite_authors/1.json
  def update
    respond_to do |format|
      if @favorite_author.update(favorite_author_params)
        format.html { redirect_to favorite_author_url(@favorite_author), notice: "Favorite author was successfully updated." }
        format.json { render :show, status: :ok, location: @favorite_author }
      else
        format.html { render :edit, status: :unprocessable_entity }
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
      @favorite_author = FavoriteAuthor.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def favorite_author_params
      params.require(:favorite_author).permit(:author_id, :user_id)
    end
end
