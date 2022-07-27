class PublicationRatingsController < ApplicationController
  before_action :set_publication_rating, only: %i[ show edit update destroy ]

  # GET /publication_ratings or /publication_ratings.json
  def index
    @publication_ratings = PublicationRating.all
  end

  # GET /publication_ratings/1 or /publication_ratings/1.json
  def show
  end

  # GET /publication_ratings/new
  def new
    @publication_rating = PublicationRating.new
  end

  # GET /publication_ratings/1/edit
  def edit
  end

  # POST /publication_ratings or /publication_ratings.json
  def create
    @publication_rating = PublicationRating.new(publication_rating_params)

    respond_to do |format|
      if @publication_rating.save
        format.html { redirect_to publication_rating_url(@publication_rating), notice: "Publication rating was successfully created." }
        format.json { render :show, status: :created, location: @publication_rating }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @publication_rating.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /publication_ratings/1 or /publication_ratings/1.json
  def update
    respond_to do |format|
      if @publication_rating.update(publication_rating_params)
        format.html { redirect_to publication_rating_url(@publication_rating), notice: "Publication rating was successfully updated." }
        format.json { render :show, status: :ok, location: @publication_rating }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @publication_rating.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /publication_ratings/1 or /publication_ratings/1.json
  def destroy
    @publication_rating.destroy

    respond_to do |format|
      format.html { redirect_to publication_ratings_url, notice: "Publication rating was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_publication_rating
      @publication_rating = PublicationRating.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def publication_rating_params
      params.require(:publication_rating).permit(:publication_id, :user_id, :rating, :rating_timestamp)
    end
end
