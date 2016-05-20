class PlacesController < ApplicationController
  def index
    @places = Place.order('created_at DESC')
  end

  def show
    @place = Place.find(params[:id])
  end

  def new
    @place = Place.new
  end

  def create
    @place = Place.new(place_params)
    if @place.save
      flash[:success] = 'New place added'
      redirect_to action: 'show', id: @place.id
    else
      render 'new'
    end
  end

  def edit
    @place = Place.find(params[:id])
  end

  def update
    @place = Place.find(params[:id])
    if @place.update_attributes(place_params)
      flash[:success] = 'Place updated'
      redirect_to action: 'show', id: @place.id
    else
      render 'edit'
    end
  end

  private

  def place_params
    params.require(:place).permit(:title, :description, :address)
  end
end
