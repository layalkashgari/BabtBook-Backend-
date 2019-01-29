class BooksController < ApplicationController
  before_action :require_token
  def index
    byebug
    @books = @current_user.books
    render json: @books
  end 

  # def index 
  #   @book = Pokemon.where(pokemon_query_params)
  #   render json: @book
  # end

  def show 
    render json: @book
  end

  def create 
    @book = Book.create(book_params)
    render json: @book
  end

  def update 
    @book.update_attributes(book_params)
    render json: @book
  end

  def destroy
    @book.destroy 
    render json: { message: "SUCCESS! Book is deleted" }
  end

  private
  def set_book
    @book = book.find(params[:id])
  end

  def book_params
    params.require(:book).permit(
      :name, :user #do i need to have user? 
    ) 
  end

  def book_query_params
    params.permit(
      :name 
    )
  end

  

  # def index
  # end

  # def show
  # end

  # def edit
  # end

  # def new
  # end
end
