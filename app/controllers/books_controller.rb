class BooksController < ApplicationController
  def index
    @book = Book.new
    @books = Book.all
  end

  def show
  end


  def create
    @book = Book.new(book_params)
    if @book.save
       redirect_to book_path(@book.id), notice: 'Book was successfully created.'
    else
       render ("books/index")
    end
  end

  def edit
  end


  private
  def book_params
    params.require(:book).permit(:title, :body)
  end


end
