class AuthorsController < ApplicationController
  before_action :set_author, only: %i[ show ]
  before_action :set_search, only: %i[ search ]

  # GET /authors or /authors.json
  def index
    @authors = Author.all
  end

  
  # GET /authors/1 or /authors/1.json
  def show
  end

 
  def search
  end

  def search_pub
    param=params[:id].split(":")[0]
    @author = Author.find(param)
    @Publications=Publication.where(publication_id:param,"title ~* ?" => params[:search])
  end

###############################################################################
 ''' 
  # GET /authors/1/edit
  def edit
  end

 # GET /authors/new
  def new
    @author = Author.new
  end

'''
'''
  # POST /authors or /authors.json
  
  def create
    @author = Author.new(author_params)

    respond_to do |format|
      if @author.save
        format.html { redirect_to author_url(@author), notice: "Author was successfully created." }
        format.json { render :show, status: :created, location: @author }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @author.errors, status: :unprocessable_entity }
      end
    end
  end
'''
''' 
  # PATCH/PUT /authors/1 or /authors/1.json
  def update
    respond_to do |format|
      if @author.update(author_params)
        format.html { redirect_to author_url(@author), notice: "Author was successfully updated." }
        format.json { render :show, status: :ok, location: @author }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @author.errors, status: :unprocessable_entity }
      end
    end
  end
'''
  
  '''
  # DELETE /authors/1 or /authors/1.json
  def destroy
    @author.destroy

    respond_to do |format|
      format.html { redirect_to authors_url, notice: "Author was successfully destroyed." }
      format.json { head :no_content }
    end
  end
'''
#######################################################################################################
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_author
      param=params[:id].split(":")[0]
      @author = Author.find(param)
      @publications=@author.publication
      s=Strings.new
      @author.interests=s.to_hash(@author.interests) 
      @cited_by=CitedBy.where(author_id: @author.author_id)[0]
      @reviews=Review.where(author_id: param)
    end

    def set_search
      s=params[:search]
      o=Operations.new
      begin
      @authors=o.scrape_authors_by_name(s)
      rescue => exception 
        puts exception
      end 
    end

    # Only allow a list of trusted parameters through.
    def author_params
      params.require(:author).permit(:author_id, :name, :surname, :affiliations, :interests)
    end
end
