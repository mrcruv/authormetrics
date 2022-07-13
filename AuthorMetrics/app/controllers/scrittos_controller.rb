class ScrittosController < ApplicationController
  before_action :set_scritto, only: %i[ show edit update destroy ]

  # GET /scrittos or /scrittos.json
  def index
    @scrittos = Scritto.all
  end

  # GET /scrittos/1 or /scrittos/1.json
  def show
  end

  # GET /scrittos/new
  def new
    @scritto = Scritto.new
  end

  # GET /scrittos/1/edit
  def edit
  end

  # POST /scrittos or /scrittos.json
  def create
    @scritto = Scritto.new(scritto_params)

    respond_to do |format|
      if @scritto.save
        format.html { redirect_to scritto_url(@scritto), notice: "Scritto was successfully created." }
        format.json { render :show, status: :created, location: @scritto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @scritto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scrittos/1 or /scrittos/1.json
  def update
    respond_to do |format|
      if @scritto.update(scritto_params)
        format.html { redirect_to scritto_url(@scritto), notice: "Scritto was successfully updated." }
        format.json { render :show, status: :ok, location: @scritto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @scritto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scrittos/1 or /scrittos/1.json
  def destroy
    @scritto.destroy

    respond_to do |format|
      format.html { redirect_to scrittos_url, notice: "Scritto was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scritto
      @scritto = Scritto.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def scritto_params
      params.fetch(:scritto, {})
    end
end
