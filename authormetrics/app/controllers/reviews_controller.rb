class ReviewsController < ApplicationController
  before_action :set_review, only: %i[show edit update destroy ]
  before_action :set_user
  # GET /reviews or /reviews.json
  def index
    @reviews = Review.all
    authorize! :index, Review, :message => "BEWARE: you are not authorized to index reviews."
  end

  # GET /reviews/1 or /reviews/1.json
  def show
    authorize! :read, @review, :message => "BEWARE: you are not authorized to read reviews."
  end

  # GET /reviews/new
  def new
    @review = Review.new
  end

  # GET /reviews/1/edit
  def edit
  end

  # POST /reviews or /reviews.json
  def create
    @review = Review.new(review_params)
    authorize! :create, @review, :message => "BEWARE: you are not authorized to create reviews."
    respond_to do |format|
      if @review.save
        format.html { redirect_to review_url(@review), notice: "Review was successfully created." }
        format.json { render :show, status: :created, location: @review }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reviews/1 or /reviews/1.json
  def update
    authorize! :update, @publication, :message => "BEWARE: you are not authorized to update reviews."
    respond_to do |format|
      if @review.update(review_params)
        format.html { redirect_to review_url(@review), notice: "Review was successfully updated." }
        format.json { render :show, status: :ok, location: @review }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reviews/1 or /reviews/1.json
  def destroy
    authorize! :destroy, @review, :message => "BEWARE: you are not authorized to delete reviews."
    @review.destroy

    respond_to do |format|
      format.html { redirect_to reviews_url, notice: "Review was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_review
      @review = Review.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def review_params
      params.require(:review).permit(:author_id, :user_id, :review, :review_timestamp)
    end
    def set_user
      @user=@review.user_id
    end
end
