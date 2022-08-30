class PublicationsController < ApplicationController
  before_action :set_publication, only: %i[ show edit update destroy ]
  before_action :set_search, only: %i[ search ]
  # GET /publications or /publications.json
  def index
    @publications = Publication.all
    authorize! :index, Publication, :message => "BEWARE: you are not authorized to index publications."
  end

  # GET /publications/1 or /publications/1.json
  def show
    authorize! :read, @publication, :message => "BEWARE: you are not authorized to read publications."
  end

  def search
  end
  
=begin
  # GET /publications/new
  def new
    @publication = Publication.new
    @written=Written.new
    #*****
  end

  # GET /publications/1/edit
  def edit
  end

  # POST /publications or /publications.json
  def create
    @publication = Publication.new(publication_params)
    authorize! :create, @publication, :message => "BEWARE: you are not authorized to create publications."
    respond_to do |format|
      if @publication.save
        format.html { redirect_to publication_url(@publication), notice: "Publication was successfully created." }
        format.json { render :show, status: :created, location: @publication }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @publication.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /publications/1 or /publications/1.json
  def update
    authorize! :update, @publication, :message => "BEWARE: you are not authorized to update publications."
    respond_to do |format|
      if @publication.update(publication_params)
        format.html { redirect_to publication_url(@publication), notice: "Publication was successfully updated." }
        format.json { render :show, status: :ok, location: @publication }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @publication.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /publications/1 or /publications/1.json
  def destroy
    authorize! :destroy, @publication, :message => "BEWARE: you are not authorized to delete publications."
    @publication.destroy

    respond_to do |format|
      format.html { redirect_to publications_url, notice: "Publication was successfully destroyed." }
      format.json { head :no_content }
    end
  end
=end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_publication
      @publication = Publication.find(params[:id])
      @comments=Comment.where(publication_id: params[:id])
    end

    def set_search
      s=params[:search]
      o=Operations.new
      begin
      @publications=o.scrape_publications_by_search(s)
      rescue => exception 
        puts exception
      end 
    end

    # Only allow a list of trusted parameters through.
    def publication_params
      params.require(:publication).permit(:publication_id, :title, :link, :published_on, :cited_by, :pub_year)
    end


end
