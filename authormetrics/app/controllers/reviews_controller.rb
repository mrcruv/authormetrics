class ReviewsController < ApplicationController
  before_action :get_review
  before_action :set_review, only: %i[show edit update destroy ]

  # GET /reviews or /reviews.json
  def index
    authorize! :index, Review, :message => "BEWARE: you are not authorized to index reviews."
    @reviews=@author.review
  end

  # GET /reviews/1 or /reviews/1.json
  def show
    authorize! :read, @review, :message => "BEWARE: you are not authorized to read reviews."
  end

  # GET /reviews/new
  def new
    @review = @author.review.build
    authorize! :create, @review, :message => "BEWARE: you are not authorized to create reviews."
    @review.user=@user
    @review.author=@author
  end

  # GET /reviews/1/edit
  def edit
    authorize! :update, @review,:message => "BEWARE: you are not authorized to update reviews."
  end

  # POST /reviews or /reviews.json
  def create
    @review = @author.review.build(review_params)
    @review.user_id=current_user.id
    authorize! :create, @review, :message => "BEWARE: you are not authorized to create reviews."
    respond_to do |format|
      if @review.save
        format.html { redirect_to author_reviews_path(@author), notice: "Reviews was successfully created." }
        format.json { render :show, status: :created, location: @review }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reviews/1 or /reviews/1.json
  def update
    authorize! :update, @review, :message => "BEWARE: you are not authorized to update reviews."
    respond_to do |format|
      if @review.update(review_params)
        format.html { redirect_to author_reviews_path(@author), notice: "Review was successfully updated." }
        format.json { render :show, status: :ok, location: @review }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reviews/1 or /reviews/1.json
  def destroy
    #authorize! :destroy, @review, :message => "BEWARE: you are not authorized to delete reviews."
    @review.destroy
    if (user_signed_in?)
      redirect_to author_reviews_path(@author)
    elsif (administrator_signed_in?)
      redirect_to control_panel_path
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def get_review
      @author=Author.find(params[:author_id])
      if current_user!=nil
        @user=User.find(current_user.id)
      end
    end

    def set_review
      if user_signed_in?
        @review = @author.review.where(user_id: current_user.id)[0]
      elsif administrator_signed_in?
        @review = @author.review.find(params[:id])
      end
    end

    # Only allow a list of trusted parameters through.
    def review_params
      params.require(:review).permit(:review_id, :author_id, :user_id, :review, :review_timestamp)
    end
   
end
