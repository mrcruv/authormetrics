class ReviewsController < ApplicationController
  before_action :get_review
  before_action :set_review, only: %i[ show destroy ]

 
  def index
    authorize! :index, Review, :message => "BEWARE: you are not authorized to index reviews."
    @reviews=@author.review
  end

  def new
    # SCRIVERE LA NEW PER @review
    @author_rating = @author.author_rating.build # ELIMINARE
    @author_rating.user=@user # ELIMINARE
    @author_rating.author=@author # ELIMINARE
    authorize! :create, @review, :message => "BEWARE: you are not authorized to create reviews."
  end

  
  def edit
    authorize! :update, @review,:message => "BEWARE: you are not authorized to update reviews."
  end

  def create
    # SCRIVERE LA CREATE PER @review
    @author_rating = @author.author_rating.build(author_rating_params) # ELIMINARE
    @author_rating.user_id=current_user.id # ELIMINARE
    authorize! :create, @review, :message => "BEWARE: you are not authorized to create reviews."
    respond_to do |format|
      if @author_rating.save
        # redirect to ???
        format.html { redirect_to ???_path(@review), notice: "Author rating was successfully created." }
        format.json { render :show, status: :created, location: @review }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    # COMPLETARE UPDATE PER @review
    authorize! :update, @review, :message => "BEWARE: you are not authorized to update reviews."
    respond_to do |format|
      if @review.update(review_params)
        # redirect to ???
        format.html { redirect_to ???_url(@review), notice: "User was successfully updated." }
        format.json { render :show, status: :ok, location: @review }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    authorize! :destroy, @review, :message => "BEWARE: you are not authorized to delete reviews."
    @review.destroy
    redirect_to ???_path(@review) # DA SETTARE ADEGUATAMENTE
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
