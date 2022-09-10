class PublicationRatingsController < ApplicationController
  before_action :get_publication_user
  before_action :set_publication_rating, only: %i[ show edit update destroy ]

  
  def index
    authorize! :index, PublicationRating, :message => "BEWARE: you are not authorized to index publication ratings."
    @publication_ratings = @publication.publication_rating
  end

  def new
    @publication_rating = @publication.publication_rating.build
    @publication_rating.user=@user
    @publication_rating.publication=@publication
    authorize! :create, @publication_rating, :message => "BEWARE: you are not authorized to create publication ratings."
  end

  def edit
    authorize! :update, @publication_rating, :message => "BEWARE: you are not authorized to update publication ratings."
  end

  def create
    @publication_rating = @publication.publication_rating.build(publication_rating_params)
    @publication_rating.user_id=current_user.id
    authorize! :create, @publication_rating, :message => "BEWARE: you are not authorized to create publication ratings."
    respond_to do |format|
      if @publication_rating.save
        format.html { redirect_to publication_publication_ratings_path(@publication), notice: "Publication rating was successfully created." }
        format.json { render :show, status: :created, location: @publication_rating }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @publication_rating.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
    authorize! :update, @publication_rating, :message => "BEWARE: you are not authorized to update publication ratings."
    respond_to do |format|
      if @publication_rating.update(publication_rating_params)
        format.html { redirect_to publication_publication_rating_path(@publication), notice: "Publication rating was successfully updated." }
        format.json { render :show, status: :ok, location: @publication_rating }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @publication_rating.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    authorize! :destroy, @publication_rating, :message => "BEWARE: you are not authorized to delete publication ratings."
    @publication_rating.destroy
    redirect_to publication_publication_ratings_path(@publication)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    
    def get_publication_user
      @publication=Publication.find(params[:publication_id])
      if current_user!=nil
        @user=User.find(current_user.id)
      end
    end
    
    def set_publication_rating
      @publication_rating = @publication.publication_rating.where(user_id: current_user.id)[0]
    end

    # Only allow a list of trusted parameters through.
    def publication_rating_params
      params.require(:publication_rating).permit(:publication_rating_id,:rating, :publication_id, :user_id)
    end

end
