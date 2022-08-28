class PublicationRatingsController < ApplicationController
  before_action :set_publication_rating, only: %i[ edit show update destroy ]

  # GET /publication_ratings or /publication_ratings.json
  def index
    @publication_ratings = PublicationRating.all
    authorize! :index, PublicationRating, :message => "BEWARE: you are not authorized to index publication ratings."
  end

  # GET /publication_ratings/1 or /publication_ratings/1.json
  def show
    authorize! :read, @publication_rating, :message => "BEWARE: you are not authorized to read publication ratings."
  end

  # GET /publication_ratings/new
  def new
    @publication_rating = PublicationRating.new
    @publication = Publication.where(publication_id:params[:publication_id])[0]
    @publication_rating.publication_id=@publication.id
    @user=current_user
    @publication_rating.user_id =current_user.id
  end

  # GET /publication_ratings/1/edit
  def edit

  end

  # POST /publication_ratings or /publication_ratings.json
  def create
    @publication_rating = PublicationRating.new(publication_rating_params)
    authorize! :create, @publication_rating, :message => "BEWARE: you are not authorized to create publication ratings."
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
    authorize! :update, @publication_rating, :message => "BEWARE: you are not authorized to update publication ratings."
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
    authorize! :destroy, @publication_rating, :message => "BEWARE: you are not authorized to delete publication ratings."
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
