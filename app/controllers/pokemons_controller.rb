class PokemonsController < ApplicationController

  def index
    j = {
      "count" => Pokemon.count,
      "results" => Pokemon.all
    }
    render json: j
  end

  def create
    p=Pokemon.find(params[:id])
    t= Type.find_by_sql ["SELECT * FROM types t WHERE t.id in (SELECT type_id FROM poke_types pt WHERE pt.pokemon_id =?)", p.id]
    j= {
      "id" => p.id,
      "name" => p.name,
      "image_url" => p.image,
      "type_attributes" => t
    }
    render json:j
  end

  def show
    respond_with Pokemon.find(params[:id])
  end

  private
  def pokemon_params
    params.require(:pokemon).permit(:name, :image)
  end
end
