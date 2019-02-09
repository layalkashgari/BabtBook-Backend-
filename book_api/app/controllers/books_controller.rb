class BooksController < ApplicationController
  before_action :require_token
  def index
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
    puts "\n\n\n\n\n\n\n )))))" ,  book_params
    @book = Book.create(book_params)
    # use the seed data and use @book.id for the id

    # Page.create({name: 'Cover', number: "1"})
    Page.create({name: 'month one', number: "2", book_id: @book.id  })
    Page.create({name: 'month two', number: "3", book_id: @book.id })
    Page.create({name: 'month three', number: "4", book_id: @book.id })
    Page.create({name: 'month four', number: "5", book_id: @book.id })
    Page.create({name: 'month five', number: "5", book_id: @book.id })
    Page.create({name: 'month six', number: "5", book_id: @book.id })
    Page.create({name: 'month seven', number: "5", book_id: @book.id })
    Page.create({name: 'month eight', number: "5", book_id: @book.id })
    Page.create({name: 'month eight', number: "5", book_id: @book.id })

    render json: {book: @book, pages: @book.pages}
    # render json: {book: @book}
     # is this right? user id 7 
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
      :name, :user_id #do i need to have user? 
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
