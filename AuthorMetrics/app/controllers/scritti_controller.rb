class ScrittoController < ApplicationController
  before_action :set_scritto, only: %i[ show edit update destroy ]

  # GET /scritto or /scritto.json
  def index
    @scritto = Scritto.all
  end

  # GET /scritto/1 or /scritto/1.json
  def show
  end

  # GET /scritto/new
  def new
    @scritto = Scritto.new
  end

  # GET /scritto/1/edit
  def edit
  end

  # POST /scritto or /scritto.json
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

  # PATCH/PUT /scritto/1 or /scritto/1.json
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

  # DELETE /scritto/1 or /scritto/1.json
  def destroy
    @scritto.destroy

    respond_to do |format|
      format.html { redirect_to scritto_url, notice: "Scritto was successfully destroyed." }
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
