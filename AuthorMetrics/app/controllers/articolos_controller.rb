class ArticoliController < ApplicationController
  before_action :set_articolo, only: %i[ show edit update destroy ]

  # GET /articoli or /articoli.json
  def index
    @articoli = Articolo.all
  end

  # GET /articoli/1 or /articoli/1.json
  def show
  end

  # GET /articoli/new
  def new
    @articolo = Articolo.new
  end

  # GET /articoli/1/edit
  def edit
  end

  # POST /articoli or /articoli.json
  def create
    @articolo = Articolo.new(articolo_params)

    respond_to do |format|
      if @articolo.save
        format.html { redirect_to articolo_url(@articolo), notice: "Articolo was successfully created." }
        format.json { render :show, status: :created, location: @articolo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @articolo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /articoli/1 or /articoli/1.json
  def update
    respond_to do |format|
      if @articolo.update(articolo_params)
        format.html { redirect_to articolo_url(@articolo), notice: "Articolo was successfully updated." }
        format.json { render :show, status: :ok, location: @articolo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @articolo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /articoli/1 or /articoli/1.json
  def destroy
    @articolo.destroy

    respond_to do |format|
      format.html { redirect_to articoli_url, notice: "Articolo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_articolo
      @articolo = Articolo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def articolo_params
      params.fetch(:articolo, {})
    end
end
