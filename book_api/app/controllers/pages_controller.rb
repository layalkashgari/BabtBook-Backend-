class PagesController < ApplicationController

  before_action :set_page, only: [:show, :update, :destroy]
  
  def index 
    if params[:book_id]
      @pages = Book.find(params[:book_id]).pages
    else 
      @pages = Page.all
    end
    render json: @pages
  end 

  def show 
    render json: @page
  end 
  def create 
    @page = Page.create(page_params)
    render json: @page
  end 
  def update 
    @page.update_attributes(page_params)
    render json: @page 
  end 
  def destroy 
    @page.destroy 
    render json: {message: "Success"}
  end 

  private 
  def set_page 
    @page = Page.find(params[:id])
  end 
  def page_params 
    params.require(:page).permit(:name, :date, :number, :image, :book_id)
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
