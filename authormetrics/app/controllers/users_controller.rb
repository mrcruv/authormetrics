class UsersController < ApplicationController
  before_action :set_user, only: %i[ show edit update destroy ]
  before_action :get_user_reviews
  # GET /users or /users.json
  def index
    @users = User.all
    authorize! :index, User, :message => "BEWARE: you are not authorized to index users."
  end

  # GET /users/1 or /users/1.json
  def show
    authorize! :read, @user, :message => "BEWARE: you are not authorized to read users."
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users or /users.json
  def create
    @user = User.new(user_params)
    authorize! :create, @user, :message => "BEWARE: you are not authorized to create users."
    respond_to do |format|
      if @user.save
        format.html { redirect_to user_url(@user), notice: "User was successfully created." }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1 or /users/1.json
  def update
    authorize! :update, @user, :message => "BEWARE: you are not authorized to update users."
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to user_url(@user), notice: "User was successfully updated." }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1 or /users/1.json
'''
  def destroy
    authorize! :destroy, @user, :message => "BEWARE: you are not authorized to delete users."
    @user.destroy

    respond_to do |format|
      format.html { redirect_to users_url, notice: "User was successfully destroyed." }
      format.json { head :no_content }
    end
  end
'''
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:id, :username, :password, :name, :surname, :birth_date, :reg_date, :email)
    end

    def get_user_reviews
      @reviews=Review.find_by( user_id: params[:id])
    end
end
