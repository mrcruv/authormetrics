class ArticoloPreferitosController < ApplicationController
  before_action :set_articolo_preferito, only: %i[ show edit update destroy ]

  # GET /articolo_preferitos or /articolo_preferitos.json
  def index
    @articolo_preferitos = ArticoloPreferito.all
  end

  # GET /articolo_preferitos/1 or /articolo_preferitos/1.json
  def show
  end

  # GET /articolo_preferitos/new
  def new
    @articolo_preferito = ArticoloPreferito.new
  end

  # GET /articolo_preferitos/1/edit
  def edit
  end

  # POST /articolo_preferitos or /articolo_preferitos.json
  def create
    @articolo_preferito = ArticoloPreferito.new(articolo_preferito_params)

    respond_to do |format|
      if @articolo_preferito.save
        format.html { redirect_to articolo_preferito_url(@articolo_preferito), notice: "Articolo preferito was successfully created." }
        format.json { render :show, status: :created, location: @articolo_preferito }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @articolo_preferito.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /articolo_preferitos/1 or /articolo_preferitos/1.json
  def update
    respond_to do |format|
      if @articolo_preferito.update(articolo_preferito_params)
        format.html { redirect_to articolo_preferito_url(@articolo_preferito), notice: "Articolo preferito was successfully updated." }
        format.json { render :show, status: :ok, location: @articolo_preferito }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @articolo_preferito.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /articolo_preferitos/1 or /articolo_preferitos/1.json
  def destroy
    @articolo_preferito.destroy

    respond_to do |format|
      format.html { redirect_to articolo_preferitos_url, notice: "Articolo preferito was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_articolo_preferito
      @articolo_preferito = ArticoloPreferito.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def articolo_preferito_params
      params.fetch(:articolo_preferito, {})
    end
end
