class TextsController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index]

  before_action :set_text, only: [:edit, :update, :destroy]


  def index
    @texts = Text.all
  end

  def new
    @text = Text.new
  end

  def create
    @text = Text.new(text_params)

    if @text.save
    redirect_to texts_path
  else
    render 'texts/new'
  end

  end

  def edit
  end




  def update
     @text.update(text_params)
    redirect_to texts_path
  end

  def destroy
    @text.destroy
    redirect_to texts_path
  end



  private

  def set_text
    @text = Text.find(params[:id])
  end


  def text_params
    params.require(:text).permit(:content, :author, :presentation_author)
  end



end

