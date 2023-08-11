class VenuesController < ApplicationController
  before_action :get_venue: [:show, :edit, :update]
  before_action :authenticate_user! except: [:index, :show]

  def index
    @venues - Venue.all
  end

  def new
    @venue = Venue.new
  end

  def create
    @venue = Venue.new(venue_params)
    if @venue.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end
  
  def update
    if @venue.update(venue_params)
      redirect_to venue_path
    else
      render :edit
    end
  end

  privete
  def venue_params
    params.require(:venue).permit(:venue_name, :prefecture_id, :address, :link)
  end

  def get_venue
    @venue = Venue.find(params[:id])
  end
end