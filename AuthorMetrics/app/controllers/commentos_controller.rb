class CommentiController < ApplicationController
  before_action :set_commento, only: %i[ show edit update destroy ]

  # GET /commenti or /commenti.json
  def index
    @commenti = Commento.all
  end

  # GET /commenti/1 or /commenti/1.json
  def show
  end

  # GET /commenti/new
  def new
    @commento = Commento.new
  end

  # GET /commenti/1/edit
  def edit
  end

  # POST /commenti or /commenti.json
  def create
    @commento = Commento.new(commento_params)

    respond_to do |format|
      if @commento.save
        format.html { redirect_to commento_url(@commento), notice: "Commento was successfully created." }
        format.json { render :show, status: :created, location: @commento }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @commento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /commenti/1 or /commenti/1.json
  def update
    respond_to do |format|
      if @commento.update(commento_params)
        format.html { redirect_to commento_url(@commento), notice: "Commento was successfully updated." }
        format.json { render :show, status: :ok, location: @commento }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @commento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /commenti/1 or /commenti/1.json
  def destroy
    @commento.destroy

    respond_to do |format|
      format.html { redirect_to commenti_url, notice: "Commento was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_commento
      @commento = Commento.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def commento_params
      params.fetch(:commento, {})
    end
end
