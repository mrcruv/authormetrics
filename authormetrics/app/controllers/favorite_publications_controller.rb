class FavoritePublicationsController < ApplicationController
  before_action :set_favorite_publication, only: %i[ show edit update destroy ]

  # GET /favorite_publications or /favorite_publications.json
  def index
    @favorite_publications = FavoritePublication.all
  end

  # GET /favorite_publications/1 or /favorite_publications/1.json
  def show
  end

  # GET /favorite_publications/new
  def new
    @favorite_publication = FavoritePublication.new
  end

  # GET /favorite_publications/1/edit
  def edit
  end

  # POST /favorite_publications or /favorite_publications.json
  def create
    @favorite_publication = FavoritePublication.new(favorite_publication_params)

    respond_to do |format|
      if @favorite_publication.save
        format.html { redirect_to favorite_publication_url(@favorite_publication), notice: "Favorite publication was successfully created." }
        format.json { render :show, status: :created, location: @favorite_publication }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @favorite_publication.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /favorite_publications/1 or /favorite_publications/1.json
  def update
    respond_to do |format|
      if @favorite_publication.update(favorite_publication_params)
        format.html { redirect_to favorite_publication_url(@favorite_publication), notice: "Favorite publication was successfully updated." }
        format.json { render :show, status: :ok, location: @favorite_publication }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @favorite_publication.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /favorite_publications/1 or /favorite_publications/1.json
  def destroy
    @favorite_publication.destroy

    respond_to do |format|
      format.html { redirect_to favorite_publications_url, notice: "Favorite publication was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_favorite_publication
      @favorite_publication = FavoritePublication.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def favorite_publication_params
      params.require(:favorite_publication).permit(:publication_id, :user_id)
    end
end
