class PlacesController < ApplicationController
  def index
    @places = Place.order('created_at DESC')
  end

  def new
  end
end
