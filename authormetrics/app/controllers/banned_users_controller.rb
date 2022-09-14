class BannedUsersController < ApplicationController
  before_action :set_banned_user, :get_admin, only: %i[ show edit update destroy ]
  before_action :get_admin, only: %i[ new create ]

  # GET /banned_users or /banned_users.json
  def index
    authorize! :index, BannedUser, :message => "BEWARE: you are not authorized to index banned users."
    @banned_users = BannedUser.all
  end

  # GET /banned_users/1 or /banned_users/1.json
  def show
    authorize! :read, @banned_user, :message => "BEWARE: you are not authorized to read banned users."
  end

  # GET /banned_users/new
  def new
    @banned_user = BannedUser.new(admin_id: @admin.admin_id)
    authorize! :create, @banned_user, :message => "BEWARE: you are not authorized to create banned users."
  end

  # GET /banned_users/1/edit
  def edit
    authorize! :update, @banned_user, :message => "BEWARE: you are not authorized to update banned users."
  end

  # POST /banned_users or /banned_users.json
  def create
    @banned_user = BannedUser.new(banned_user_params)
    authorize! :create, @banned_user, :message => "BEWARE: you are not authorized to create banned users."
    respond_to do |format|
      if @banned_user.save
        format.html { redirect_to banned_user_url(@banned_user), notice: "Banned user was successfully created." }
        format.json { render :show, status: :created, location: @banned_user }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @banned_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /banned_users/1 or /banned_users/1.json
  def update
    authorize! :update, @banned_user, :message => "BEWARE: you are not authorized to update banned users."
    respond_to do |format|
      if @banned_user.update(banned_user_params)
        format.html { redirect_to banned_user_url(@banned_user), notice: "Banned user was successfully updated." }
        format.json { render :show, status: :ok, location: @banned_user }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @banned_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /banned_users/1 or /banned_users/1.json
  def destroy
    authorize! :destroy, @banned_user, :message => "BEWARE: you are not authorized to destroy banned users."
    @banned_user.destroy
    respond_to do |format|
      format.html { redirect_to banned_users_url, notice: "Banned user was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_banned_user
      @banned_user = BannedUser.find(params[:id])
    end

    def get_admin
      if current_administrator!=nil
        @admin=Administrator.find(current_administrator.admin_id)
      end
    end

    # Only allow a list of trusted parameters through.
    def banned_user_params
      params.require(:banned_user).permit(:user_id, :admin_id, :start_date, :end_date, :reason)
    end
end
