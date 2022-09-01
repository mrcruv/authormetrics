class AuthorRatingsController < ApplicationController
  before_action :get_author_user
  before_action :set_author_rating, only: %i[ show edit update destroy ]

  # GET /author_ratings or /author_ratings.json
  def index
    @author_ratings = @author.author_rating
    authorize! :index, AuthorRating, :message => "BEWARE: you are not authorized to index author ratings."
  end

  # TEST GET authors/:author_id/author_ratings
  def index_tmdb
    @author_ratings = @author.author_rating
    authorize! :index, AuthorRating, :message => "BEWARE: you are not authorized to index author ratings."
  end

  # GET /author_ratings/1 or /author_ratings/1.json
  def show
    authorize! :read, @author_rating, :message => "BEWARE: you are not authorized to read author ratings."
  end

  # GET /author_ratings/new
  def new
    @author_rating = @author.author_rating.build
    @author_rating.user=@user
    @author_rating.author=@author
  end

  # GET /author_ratings/1/edit
  def edit
  end

  # POST authors/:id_author/author_ratings/:id
  def create
    @author_rating = @author.author_rating.build(author_rating_params)
    authorize! :create, @author_rating, :message => "BEWARE: you are not authorized to create author ratings."
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

  # TEST POST  authors/:id_author/author_ratings/:id
  def create_tmdb
    @author_rating = @author.author_rating.build(author_rating_params)
    authorize! :create, @author_rating, :message => "BEWARE: you are not authorized to create author ratings."
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

  # PATCH/PUT /author_ratings/1 or /author_ratings/1.json
  def update
    authorize! :update, @author_rating, :message => "BEWARE: you are not authorized to update author ratings."
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
    authorize! :destroy, @author_rating, :message => "BEWARE: you are not authorized to delete author ratings."
    @author_rating.destroy
    redirect_to author_path(@author)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    
    def get_author_user
      @author=Author.find(params[:author_id])
      @user=User.find(current_user.id)
      
    end
    
    def set_author_rating
      @author_rating = @author.author_rating.where(user_id: current_user.id)[0]
    end

    # Only allow a list of trusted parameters through.
    def author_rating_params
      params.require(:author_rating).permit(:author_rating_id,:rating, :author_id, :user_id)
    end

end
