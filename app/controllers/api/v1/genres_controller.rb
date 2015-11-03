class Api::V1::GenresController < ApplicationController

  def index
    @genres = GenresRepository.all
    render json: @genres
  end

  def show
    @genre = GenresRepository.find_by_id(params[:id])
    render json: @genre
  end
end
