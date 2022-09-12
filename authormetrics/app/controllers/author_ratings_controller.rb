class AuthorRatingsController < ApplicationController
  before_action :get_author_user#,only: %i[new create edit update destroy ]
  before_action :set_author_rating, only: %i[ show edit update destroy ]

  # GET /author_ratings or /author_ratings.json
  def index
    authorize! :index, AuthorRating, :message => "BEWARE: you are not authorized to index author ratings."
    @author_ratings=@author.author_rating
  end

  # GET /author_ratings/1 or /author_ratings/1.json
=begin
  def show
    authorize! :read, @author_rating, :message => "BEWARE: you are not authorized to read author ratings."
  end
=end
  # GET /author_ratings/new
  def new
    @author_rating = @author.author_rating.build
    @author_rating.user=@user
    @author_rating.author=@author
    authorize! :create, @author_rating, :message => "BEWARE: you are not authorized to create author ratings."
  end

  # GET /author_ratings/1/edit
  def edit
    authorize! :update, @author_rating, :message => "BEWARE: you are not authorized to update author ratings."
  end

  # POST authors/:id_author/author_ratings/
  def create
    @author_rating = @author.author_rating.build(author_rating_params)
    @author_rating.user_id=current_user.id
    authorize! :create, @author_rating,:message => "BEWARE: you are not authorized to create author ratings."
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
        format.html { redirect_to author_author_ratings_path(@author), notice: "Author rating was successfully updated." }
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
    redirect_to author_author_ratings_path(@author)
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
