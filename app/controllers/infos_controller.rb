class InfosController < ApplicationController


skip_before_action :authenticate_user!, only: [:index]

before_action :set_info, only: [:edit, :update, :destroy]


  def index
    @infos = Info.all
  end

  def new
    @info = Info.new
  end

  def create
    @info = Info.new(info_params)

    if @info.save
    redirect_to infos_path  else
    render 'infos/new'
    end

  end

  def edit
  end






  def update
     @info.update(info_params)
    redirect_to infos_path
  end

  def destroy
    @info.destroy
    redirect_to infos_path
  end





  private

  def set_info
    @info = Info.find(params[:id])
  end


  def info_params
    params.require(:info).permit(:category, :name, :date, :localisation, :commentary)
  end

end





