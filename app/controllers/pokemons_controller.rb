class PokemonsController < ApplicationController
  before_action :get_pokemons, :only => [:index, :show]
  before_action :validate_params, :only => [:create]

  def get_pokemon
    @pokemon = []
  end

  def show

  end

  def index

  end

  def new
    @pokemon = Pokemon.new
  end

  def create
    Pokemon.create(params)
  end

  private

  def validate_params
    params.require(:name, :image)
  end
end