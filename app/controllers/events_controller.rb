class EventsController < ApplicationController
  before_action :get_event, only: [:show, :edit, :update]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @venue = Venue.find(params[:venue_id])
    @events = Event.includes(:venue)
  end

  def new
    @venue = Venue.find(params[:venue_id])
    @event = Event.new
  end

  def create
    @venue = Venue.find(params[:venue_id])
    @event = Event.new(event_params)
    if @event.save
      redirect_to venue_path(@venue.id)
    else
      render :new
    end
  end

  def show
  end
  
  def edit
  end

  def update
    if @nenue.update(event_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private
  def event_params
    params.require(:event).permit(:event_name, :openig_date, :last_date, :genre_id, :link).merge(venue_id: params[:venue_id])
  end

  def get_event
    @event = Event.find(params[:id])
    @venue = Venue.find(params[:venue_id])
  end

end
