class EventsController < ApplicationController
   skip_before_action :authenticate_user!, only: [:index]

  before_action :set_event, only: [:edit, :show, :update, :destroy]


  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)

    if @event.save
    redirect_to events_path  else
    render 'events/new'
  end

  end

  def edit
  end




  def update
     @event.update(event_params)
    redirect_to events_path
  end

  def destroy
    @event.destroy
    redirect_to events_path
  end




  private

  def set_event
    @event = Event.find(params[:id])
  end


  def event_params
    params.require(:event).permit(:category, :name, :date, :localisation, :information, :photo)
  end
end


