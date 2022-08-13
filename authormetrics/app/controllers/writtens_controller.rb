class WrittensController < ApplicationController
  '''
  before_action :set_written, only: %i[ show edit update destroy ]

  # GET /writtens or /writtens.json
  def index
    @writtens = Written.all
  end

  # GET /writtens/1 or /writtens/1.json
  def show
  end

  # GET /writtens/new
  def new
    @written = Written.new
  end

  # GET /writtens/1/edit
  def edit
  end

  # POST /writtens or /writtens.json
  def create
    @written = Written.new(written_params)

    respond_to do |format|
      if @written.save
        format.html { redirect_to written_url(@written), notice: "Written was successfully created." }
        format.json { render :show, status: :created, location: @written }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @written.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /writtens/1 or /writtens/1.json
  def update
    respond_to do |format|
      if @written.update(written_params)
        format.html { redirect_to written_url(@written), notice: "Written was successfully updated." }
        format.json { render :show, status: :ok, location: @written }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @written.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /writtens/1 or /writtens/1.json
  def destroy
    @written.destroy

    respond_to do |format|
      format.html { redirect_to writtens_url, notice: "Written was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_written
      @written = Written.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def written_params
      params.require(:written).permit(:author_id, :publication_id)
    end
    '''
end
