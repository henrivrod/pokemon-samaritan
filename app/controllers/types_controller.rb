class TypesController < ApplicationController
  before_action :get_types, :only => [:index, :show]
  before_action :validate_params, :only => [:create]

  def get_types
    @types = []
  end

  def show

  end

  def index

  end

  def create
    Type.create(params[:name])
  end

  private

  def validate_params
    params.require(:name)
  end
end