class Api::V1::EstablishmentsController < ApplicationController

  # def index
  #   @establishments = Establishment.all
  #   render json: @establishments
  # end
  # #
  # def show
  #   @establishment = Establishment.find(params[:id])
  #   render json: @establishment
  # end

  def create
    render json: Establishment.search(params["term"], params["location"])
  end

  # def search
  #
  # end
  #
  # def edit
  # end
  #
  # def update
  # end
  #
  # private
  #
  # def establishment_params
  #   params.require(:establishment).permit(:YelpId, :name, :category, :open, :hours, :phone, :image)
  # end
end
