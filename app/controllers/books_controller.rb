class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

def new
    @book = Book.new
      @books = Book.all
end

def edit
  @book = Book.find(params[:id])
  @books = Book.all
end

def create
    @book = Book.new(params[:book])
    respond_to do |format|
      if @book.save
        format.html { redirect_to @book, notice: 'Livro criado com sucesso.' }
      else
        format.html { render action: "new" }
      end
    end
end

  def update
    @book = Book.find(params[:id])
    respond_to do |format|
      if @book.update_attributes(params[:book])
        format.html { redirect_to @book, notice: 'Livro atualizado com sucesso' }
      else
        format.html { render action: "edit" }
      end
    end
  end

def destroy
    @book = Book.find(params[:id])
    @book.destroy
    respond_to do |format|
      format.html { redirect_to books_path }
end

end
end
