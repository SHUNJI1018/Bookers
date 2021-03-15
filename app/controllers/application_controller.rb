class ApplicationController < ActionController::Base

 def show
 end

  def index
    @books = Book.all
    @book = Book.new
  end

  def new
    
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to '/books'
  end

  def edit
  end
  
  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to '/books'
  end

  private
  def book_params
    params.permit(:title, :body)
  end

end