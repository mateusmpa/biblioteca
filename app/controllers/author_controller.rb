class AuthorsController < ApplicationController

  before_action :set_author, only: [:show, :edit, :update, :destroy]
  def index
    @authors = Author.all
    if params[:search]
    @authors = Author.search(params[:search]).order("created_at DESC")
    else
    @authors = Author.all.order('created_at DESC')
    end
  end

  def show
   @author =  Author.find(params[:id])
  end

  # GET /authors/new
  def new
    @author = Author.new
  end

  # GET /authors/1/edit
  def edit
    @author = Author.find(params[:id])
  end

  # POST /authors
  def create
    @author = Author.new(author_params)

    respond_to do |format|
      if @author.save
        format.html { redirect_to @author, notice: 'Autor criado com sucesso.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /authors/1
  def update
    respond_to do |format|
      if @author.update(author_params)
        format.html { redirect_to @author, notice: 'Autor atualizado com sucesso.' }
      else
        format.html { render :edit }
       end
    end
  end

  # DELETE /authors/1
  def destroy
    @author.destroy
    respond_to do |format|
      format.html { redirect_to authors_url, notice: 'Autor excluído com sucesso.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_author
      @author = Author.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def author_params
      params[:author].permit(:name, :bio )
    end

end
