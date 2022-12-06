class PokemonsController < ApplicationController

  def index
    @ps = Pokemon.all
  end

  def create
    respond_with Pokemon.create(post_params)
  end

  def show
    respond_with Pokemon.find(params[:id])
  end

  private
  def pokemon_params
    params.require(:pokemon).permit(:name, :image)
  end
end
