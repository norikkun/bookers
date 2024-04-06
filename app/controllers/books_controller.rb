class BooksController < ApplicationController
  def top
    
  end

  def edit
    @list = List.find(params[:])
  end
  
  def create
    book = Book.new(book_params)
    book.save
    redirect_to "/books/#{book.id}"
  end
  
  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to '/books'
  end
  def index
    @book = Book.new
    @books = Book.all
  end

  def show
     @book = Book.find(params[:id])
  end

private
  def book_params
  params.require(:book).permit(:title, :body)
  end
end