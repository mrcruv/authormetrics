class AdministratorsController < ApplicationController
  before_action :set_administrator, only: %i[ show edit update destroy ]

  # GET /administrators or /administrators.json
  def index
    authorize! :index, Administrator, :message => "BEWARE: you are not authorized to index administrators."
    @administrators = Administrator.all
  end

  # GET /administrators/1 or /administrators/1.json
  def show
    authorize! :read, @administrator, :message => "BEWARE: you are not authorized to read administrators."
  end

  # GET /administrators/new
  def new
    @administrator = Administrator.new
    authorize! :create, @administrator, :message => "BEWARE: you are not authorized to create administrators."
  end

  # GET /administrators/1/edit
  def edit
    authorize! :update, @administrator, :message => "BEWARE: you are not authorized to update administrators."
  end

  # POST /administrators or /administrators.json
  def create
    @administrator = Administrator.new(administrator_params)
    authorize! :create, @administrator, :message => "BEWARE: you are not authorized to create administrators."
    respond_to do |format|
      if @administrator.save
        format.html { redirect_to administrator_url(@administrator), notice: "Administrator was successfully created." }
        format.json { render :show, status: :created, location: @administrator }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @administrator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /administrators/1 or /administrators/1.json
  def update
    authorize! :update, @administrator, :message => "BEWARE: you are not authorized to update administrators."
    respond_to do |format|
      if @administrator.update(administrator_params)
        format.html { redirect_to administrator_url(@administrator), notice: "Administrator was successfully updated." }
        format.json { render :show, status: :ok, location: @administrator }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @administrator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /administrators/1 or /administrators/1.json
  def destroy
    @administrator.destroy
    authorize! :destroy, @administrator, :message => "BEWARE: you are not authorized to destroy administrators."
    respond_to do |format|
      format.html { redirect_to administrators_url, notice: "Administrator was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_administrator
      @administrator = Administrator.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def administrator_params
      params.require(:administrator).permit(:id, :username, :password, :email)
    end
end
