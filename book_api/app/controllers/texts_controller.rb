class TextsController < ApplicationController
 
  before_action :set_text, only: [:show, :update, :destroy]

  def index 
    if params[:page_id]
      @texts = Page.find(params[:page_id]).texts 
    else 
      @texts = Text.all 
    end 
    render json: @texts
  end 

  def show 
    render json: @text
  end 

  def create 
    @text = Text.create(text_params)
    render json: @text
  end 

  def update 
    @text.update_attributes(text_params)
    render json: @text
  end 

  def destroy 
    @text.destroy 
    render json: {message: "success"}
  end 

  private 
  def set_text
    @text = Text.find(params[:id])
  end 
  def text_params 
    params.require(:text).permit(:content, :page_id, :name)
  end

end
