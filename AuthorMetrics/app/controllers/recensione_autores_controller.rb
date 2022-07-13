class RecensioneAutoresController < ApplicationController
  before_action :set_recensione_autore, only: %i[ show edit update destroy ]

  # GET /recensione_autores or /recensione_autores.json
  def index
    @recensione_autores = RecensioneAutore.all
  end

  # GET /recensione_autores/1 or /recensione_autores/1.json
  def show
  end

  # GET /recensione_autores/new
  def new
    @recensione_autore = RecensioneAutore.new
  end

  # GET /recensione_autores/1/edit
  def edit
  end

  # POST /recensione_autores or /recensione_autores.json
  def create
    @recensione_autore = RecensioneAutore.new(recensione_autore_params)

    respond_to do |format|
      if @recensione_autore.save
        format.html { redirect_to recensione_autore_url(@recensione_autore), notice: "Recensione autore was successfully created." }
        format.json { render :show, status: :created, location: @recensione_autore }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @recensione_autore.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recensione_autores/1 or /recensione_autores/1.json
  def update
    respond_to do |format|
      if @recensione_autore.update(recensione_autore_params)
        format.html { redirect_to recensione_autore_url(@recensione_autore), notice: "Recensione autore was successfully updated." }
        format.json { render :show, status: :ok, location: @recensione_autore }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @recensione_autore.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recensione_autores/1 or /recensione_autores/1.json
  def destroy
    @recensione_autore.destroy

    respond_to do |format|
      format.html { redirect_to recensione_autores_url, notice: "Recensione autore was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recensione_autore
      @recensione_autore = RecensioneAutore.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def recensione_autore_params
      params.fetch(:recensione_autore, {})
    end
end
