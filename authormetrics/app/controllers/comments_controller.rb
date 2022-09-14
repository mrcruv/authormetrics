class CommentsController < ApplicationController
  before_action :get_comment
  before_action :set_comment, only: %i[show edit update destroy ]

  # GET /comments or /comments.json
  def index
    authorize! :index, Comment, :message => "BEWARE: you are not authorized to index comments."
    @comments = @publication.comment
  end

  # GET /comments/1 or /comments/1.json
  def show
    authorize! :read, @comment, :message => "BEWARE: you are not authorized to read comments."
  end

  # GET /comments/new
  def new
    @comment = @publication.comment.build
    @comment.user=@user
    @comment.publication=@publication
    authorize! :create, @comment, :message => "BEWARE: you are not authorized to create comments."
  end

  # GET /comments/1/edit
  def edit
    authorize! :update, @comment, :message => "BEWARE: you are not authorized to update comments."
  end

  # POST /comments or /comments.json
  def create
    @comment = @publication.comment.build(comment_params)
    @comment.user_id=current_user.id
    authorize! :create, @comment, :message => "BEWARE: you are not authorized to create comments."
    respond_to do |format|
      if @comment.save
        format.html { redirect_to publication_comments_path(@publication), notice: "Comments was successfully created." }
        format.json { render :show, status: :created, location: @comment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comments/1 or /comments/1.json
  def update
    authorize! :update, @comment, :message => "BEWARE: you are not authorized to update comments."
    respond_to do |format|
      if @comment.update(comment_params)
        format.html { redirect_to publication_comments_path(@publication), notice: "Comments was successfully updated." }
        format.json { render :show, status: :ok, location: @comment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comments/1 or /comments/1.json
  def destroy
    authorize! :destroy, @comment, :message => "BEWARE: you are not authorized to delete comments."
    @comment.destroy
    redirect_to publication_comments_path(@publication)
  end

  private
    def get_comment
      @publication=Publication.find(params[:publication_id])
      if current_user!=nil
        @user=User.find(current_user.id)
      end
    end 

    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      if user_signed_in?
        @comment = @publication.comment.where(user_id: current_user.id)[0]
      elsif administrator_signed_in?
        @comment = @publication.comment.where(user_id: :user_id)[0]
      end
    end

    # Only allow a list of trusted parameters through.
    def comment_params
      params.require(:comment).permit(:comment_id, :publication_id, :user_id, :comment, :comment_timestamp)
    end
  
  end

