class RatingAutoriController < ApplicationController
  before_action :set_rating_autore, only: %i[ show edit update destroy ]

  # GET /rating_autori or /rating_autori.json
  def index
    @rating_autori = RatingAutore.all
  end

  # GET /rating_autori/1 or /rating_autori/1.json
  def show
  end

  # GET /rating_autori/new
  def new
    @rating_autore = RatingAutore.new
  end

  # GET /rating_autori/1/edit
  def edit
  end

  # POST /rating_autori or /rating_autori.json
  def create
    @rating_autore = RatingAutore.new(rating_autore_params)

    respond_to do |format|
      if @rating_autore.save
        format.html { redirect_to rating_autore_url(@rating_autore), notice: "Rating autore was successfully created." }
        format.json { render :show, status: :created, location: @rating_autore }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @rating_autore.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rating_autori/1 or /rating_autori/1.json
  def update
    respond_to do |format|
      if @rating_autore.update(rating_autore_params)
        format.html { redirect_to rating_autore_url(@rating_autore), notice: "Rating autore was successfully updated." }
        format.json { render :show, status: :ok, location: @rating_autore }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @rating_autore.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rating_autori/1 or /rating_autori/1.json
  def destroy
    @rating_autore.destroy

    respond_to do |format|
      format.html { redirect_to rating_autori_url, notice: "Rating autore was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rating_autore
      @rating_autore = RatingAutore.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def rating_autore_params
      params.fetch(:rating_autore, {})
    end
end
