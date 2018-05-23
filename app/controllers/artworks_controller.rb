class ArtworksController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index, :show, :showvr, :illustration]

  before_action :set_project, only: [:new, :create]
  before_action :find_artwork, only: [:show, :edit, :update, :destroy, :showvr, :illustration]

  def index
    @artworks = Artwork.all
  end

  def new
    @artwork = Artwork.new
  end

  def create
    @artwork = Artwork.new(artwork_params)
    @artwork.project = @project

    if @artwork.save
      redirect_to artwork_path(@artwork)
    else
      render 'artworks/new'
    end
  end

  def edit
  end

  def show
  end

  def illustration
  end

  def showvr
  end


  def update
     @artwork.update(artwork_params)
    redirect_to artwork_path(@artwork)
  end

  def destroy
    @artwork.destroy
    redirect_to projects_path(@project)
  end

  private

  def set_project
    @project = Project.find(params[:project_id])
  end

   def find_artwork
    @artwork = Artwork.find(params[:id])
  end

  def artwork_params
    params.require(:artwork).permit(:title, :project_id, :description, :format, :date, :ranking, :category, :photo)
  end


end


