class CommentosController < ApplicationController
  before_action :set_commento, only: %i[ show edit update destroy ]

  # GET /commentos or /commentos.json
  def index
    @commentos = Commento.all
  end

  # GET /commentos/1 or /commentos/1.json
  def show
  end

  # GET /commentos/new
  def new
    @commento = Commento.new
  end

  # GET /commentos/1/edit
  def edit
  end

  # POST /commentos or /commentos.json
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

  # PATCH/PUT /commentos/1 or /commentos/1.json
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

  # DELETE /commentos/1 or /commentos/1.json
  def destroy
    @commento.destroy

    respond_to do |format|
      format.html { redirect_to commentos_url, notice: "Commento was successfully destroyed." }
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
