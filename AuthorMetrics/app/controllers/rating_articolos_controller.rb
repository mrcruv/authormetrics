class RatingArticolosController < ApplicationController
  before_action :set_rating_articolo, only: %i[ show edit update destroy ]

  # GET /rating_articolos or /rating_articolos.json
  def index
    @rating_articolos = RatingArticolo.all
  end

  # GET /rating_articolos/1 or /rating_articolos/1.json
  def show
  end

  # GET /rating_articolos/new
  def new
    @rating_articolo = RatingArticolo.new
  end

  # GET /rating_articolos/1/edit
  def edit
  end

  # POST /rating_articolos or /rating_articolos.json
  def create
    @rating_articolo = RatingArticolo.new(rating_articolo_params)

    respond_to do |format|
      if @rating_articolo.save
        format.html { redirect_to rating_articolo_url(@rating_articolo), notice: "Rating articolo was successfully created." }
        format.json { render :show, status: :created, location: @rating_articolo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @rating_articolo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rating_articolos/1 or /rating_articolos/1.json
  def update
    respond_to do |format|
      if @rating_articolo.update(rating_articolo_params)
        format.html { redirect_to rating_articolo_url(@rating_articolo), notice: "Rating articolo was successfully updated." }
        format.json { render :show, status: :ok, location: @rating_articolo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @rating_articolo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rating_articolos/1 or /rating_articolos/1.json
  def destroy
    @rating_articolo.destroy

    respond_to do |format|
      format.html { redirect_to rating_articolos_url, notice: "Rating articolo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rating_articolo
      @rating_articolo = RatingArticolo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def rating_articolo_params
      params.fetch(:rating_articolo, {})
    end
end
