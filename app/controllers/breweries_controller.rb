class BreweriesController < ApplicationController

  def index
    @breweries = Brewery.all
  end

  def show
  end

  def new
    @brewery = Brewery.new
  end

  def create
    @brewery = Brewery.new(params[:brewery])
    if @brewery.save
      redirect_to breweries_path
    else
      render :new
    end
  end

end
