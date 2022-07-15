class AutoriController < ApplicationController
  before_action :set_autore, only: %i[ show edit update destroy ]

  # GET /autori or /autori.json
  def index
    @autori = Autore.all
  end

  # GET /autori/1 or /autori/1.json
  def show
  end

  # GET /autori/new
  def new
    @autore = Autore.new
  end

  # GET /autori/1/edit
  def edit
  end

  # POST /autori or /autori.json
  def create
    @autore = Autore.new(autore_params)

    respond_to do |format|
      if @autore.save
        format.html { redirect_to autore_url(@autore), notice: "Autore was successfully created." }
        format.json { render :show, status: :created, location: @autore }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @autore.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /autori/1 or /autori/1.json
  def update
    respond_to do |format|
      if @autore.update(autore_params)
        format.html { redirect_to autore_url(@autore), notice: "Autore was successfully updated." }
        format.json { render :show, status: :ok, location: @autore }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @autore.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /autori/1 or /autori/1.json
  def destroy
    @autore.destroy

    respond_to do |format|
      format.html { redirect_to autori_url, notice: "Autore was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_autore
      @autore = Autore.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def autore_params
      params.fetch(:autore, {})
    end
end
