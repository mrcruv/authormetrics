class RecensioniautoriController < ApplicationController
  before_action :set_recensione_autore, only: %i[ show edit update destroy ]

  # GET /recensioni_autori or /recensioni_autori.json
  def index
    @recensioni_autori = RecensioneAutore.all
  end

  # GET /recensioni_autori/1 or /recensioni_autori/1.json
  def show
  end

  # GET /recensioni_autori/new
  def new
    @recensione_autore = RecensioneAutore.new
  end

  # GET /recensioni_autori/1/edit
  def edit
  end

  # POST /recensioni_autori or /recensioni_autori.json
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

  # PATCH/PUT /recensioni_autori/1 or /recensioni_autori/1.json
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

  # DELETE /recensioni_autori/1 or /recensioni_autori/1.json
  def destroy
    @recensione_autore.destroy

    respond_to do |format|
      format.html { redirect_to recensioni_autori_url, notice: "Recensione autore was successfully destroyed." }
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
