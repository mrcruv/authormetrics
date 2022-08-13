class CitedBiesController < ApplicationController
  '''
  before_action :set_cited_by, only: %i[ show edit update destroy ]

  # GET /cited_bies or /cited_bies.json
  def index
    @cited_bies = CitedBy.all
  end

  # GET /cited_bies/1 or /cited_bies/1.json
  def show
  end

  # GET /cited_bies/new
  def new
    @cited_by = CitedBy.new
  end

  # GET /cited_bies/1/edit
  def edit
  end

  # POST /cited_bies or /cited_bies.json
  def create
    @cited_by = CitedBy.new(cited_by_params)

    respond_to do |format|
      if @cited_by.save
        format.html { redirect_to cited_by_url(@cited_by), notice: "Cited by was successfully created." }
        format.json { render :show, status: :created, location: @cited_by }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cited_by.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cited_bies/1 or /cited_bies/1.json
  def update
    respond_to do |format|
      if @cited_by.update(cited_by_params)
        format.html { redirect_to cited_by_url(@cited_by), notice: "Cited by was successfully updated." }
        format.json { render :show, status: :ok, location: @cited_by }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cited_by.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cited_bies/1 or /cited_bies/1.json
  def destroy
    @cited_by.destroy

    respond_to do |format|
      format.html { redirect_to cited_bies_url, notice: "Cited by was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cited_by
      @cited_by = CitedBy.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cited_by_params
      params.fetch(:cited_by, {})
    end
    '''
end
