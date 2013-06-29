class BreweriesController < ApplicationController

  def index
    @breweries = Brewery.all
  end

  def show
    @brewery = Brewery.find(params[:id])
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

  def destroy
    brewery = Brewery.find(params[:id])
    brewery.destroy
    redirect_to breweries_path
  end

  def edit
    @brewery = Brewery.find(params[:id])
  end

  def update
    @brewery = Brewery.find(params[:id])

    if @brewery.update_attributes(params[:brewery])
      redirect_to breweries_path
    else
      render :edit
    end
  end

end
