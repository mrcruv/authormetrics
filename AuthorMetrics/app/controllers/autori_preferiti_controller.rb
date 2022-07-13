class AutoriPreferitiController < ApplicationController
  before_action :set_autore_preferito, only: %i[ show edit update destroy ]

  # GET /autori_preferiti or /autori_preferiti.json
  def index
    @autori_preferiti = AutorePreferito.all
  end

  # GET /autori_preferiti/1 or /autori_preferiti/1.json
  def show
  end

  # GET /autori_preferiti/new
  def new
    @autore_preferito = AutorePreferito.new
  end

  # GET /autori_preferiti/1/edit
  def edit
  end

  # POST /autori_preferiti or /autori_preferiti.json
  def create
    @autore_preferito = AutorePreferito.new(autore_preferito_params)

    respond_to do |format|
      if @autore_preferito.save
        format.html { redirect_to autore_preferito_url(@autore_preferito), notice: "Autore preferito was successfully created." }
        format.json { render :show, status: :created, location: @autore_preferito }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @autore_preferito.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /autori_preferiti/1 or /autori_preferiti/1.json
  def update
    respond_to do |format|
      if @autore_preferito.update(autore_preferito_params)
        format.html { redirect_to autore_preferito_url(@autore_preferito), notice: "Autore preferito was successfully updated." }
        format.json { render :show, status: :ok, location: @autore_preferito }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @autore_preferito.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /autori_preferiti/1 or /autori_preferiti/1.json
  def destroy
    @autore_preferito.destroy

    respond_to do |format|
      format.html { redirect_to autori_preferiti_url, notice: "Autore preferito was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_autore_preferito
      @autore_preferito = AutorePreferito.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def autore_preferito_params
      params.fetch(:autore_preferito, {})
    end
end
