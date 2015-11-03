class Api::V1::GenresController < ApplicationController

  def index
    @genres = GenresRepository.all
    render json: @genres
  end
end
