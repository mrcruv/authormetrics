class AuthorRatingsController < ApplicationController
  before_action :set_author_rating, only: %i[ show edit update destroy ]

  # GET /author_ratings or /author_ratings.json
  def index
    @author_ratings = AuthorRating.all
  end

  # GET /author_ratings/1 or /author_ratings/1.json
  def show

  end

  # GET /author_ratings/new
  def new
    @author_rating = AuthorRating.new
    @user=User.where(user_id:current_user.id)[0]
    @author=Author.where(author_id:params[:author_id])
  end

  # GET /author_ratings/1/edit
  def edit
  end

  # POST /author_ratings or /author_ratings.json
  def create
    @author_rating = AuthorRating.new(author_rating_params)

    respond_to do |format|
      if @author_rating.save
        format.html { redirect_to author_author_rating_url(@author_rating), notice: "Author rating was successfully created." }
        format.json { render :show, status: :created, location: @author_rating }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @author_rating.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /author_ratings/1 or /author_ratings/1.json
  def update
    respond_to do |format|
      if @author_rating.update(author_rating_params)
        format.html { redirect_to author_rating_url(@author_rating), notice: "Author rating was successfully updated." }
        format.json { render :show, status: :ok, location: @author_rating }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @author_rating.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /author_ratings/1 or /author_ratings/1.json
  def destroy
    @author_rating.destroy

    respond_to do |format|
      format.html { redirect_to author_author_ratings_url, notice: "Author rating was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_author_rating
      @author_rating = AuthorRating.new
    end

    # Only allow a list of trusted parameters through.
    def author_rating_params
      params.require(:author_rating).permit(:rating, :author_id, :user_id)
    end
end
