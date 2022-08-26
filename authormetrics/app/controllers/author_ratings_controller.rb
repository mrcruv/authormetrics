class AuthorRatingsController < ApplicationController
  before_action :get_author
  before_action :set_author_rating, only: %i[ create show edit update destroy ]

  # GET /author_ratings or /author_ratings.json
  def index
    @author_ratings = @author.author_rating
  end

  # GET /author_ratings/1 or /author_ratings/1.json
  def show
  end

  # GET /author_ratings/new
  def new
    @author_rating = @author.author_rating.build
  end

  # GET /author_ratings/1/edit
  def edit
  end

  # POST /author_ratings or /author_ratings.json
  def create
    #@author_rating = @author.author_rating.build(author_rating_params)
    #@author_rating.user_id=current_user.id
    respond_to do |format|
      if @author_rating.save
        format.html { redirect_to author_author_ratings_path(@author), notice: "Author rating was successfully created." }
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
        format.html { redirect_to author_author_rating_path(@author), notice: "Author rating was successfully updated." }
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
    redirect_to author_path(@author)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    
    def get_author
      @author=Author.find(params[:author_id])
    end
    
    def set_author_rating
      @author_rating = @author.author_rating.where(user_id: current_user.id)[0]
    end

    # Only allow a list of trusted parameters through.
    def author_rating_params
      params.require(:author_rating).permit(:author_rating_id,:rating, :author_id, :user_id)
    end

end
