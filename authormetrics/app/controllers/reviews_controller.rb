class ReviewsController < ApplicationController
  before_action :get_review
  before_action :set_review, only: %i[ show destroy ]

 
  def index
    authorize! :index, Review, :message => "BEWARE: you are not authorized to index reviews."
    @reviews=@author.riview
  end

  def new
    @author_rating = @author.author_rating.build
    authorize! :create, @author_rating, :message => "BEWARE: you are not authorized to create author ratings."
    @author_rating.user=@user
    @author_rating.author=@author
  end

  
  def edit
  end

  def create
    @author_rating = @author.author_rating.build(author_rating_params)
    authorize! :create, @author_rating,:message => "BEWARE: you are not authorized to create author ratings."
    @author_rating.user_id=current_user.id
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

  def update
  end

  def destroy
    authorize! :destroy, @author_rating, :message => "BEWARE: you are not authorized to delete author ratings."
    @author_rating.destroy
    redirect_to author_path(@author)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    
    def get_author_user
      @author=Author.find(params[:author_id])
      if current_user!=nil
        @user=User.find(current_user.id)
      end
      
    end
    
    def set_author_rating
      @author_rating = @author.author_rating.where(user_id: current_user.id)[0]
    end

    # Only allow a list of trusted parameters through.
    def author_rating_params
      params.require(:author_rating).permit(:author_rating_id,:rating, :author_id, :user_id)
    end

end
