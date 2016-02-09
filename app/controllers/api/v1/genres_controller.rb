require 'resque'

class Api::V1::GenresController < ApplicationController

  def index
    @genres = GenresRepository.all
    # Resque.enqueue(TestJob)
    render json: @genres
  end

  def show
    @genre = GenresRepository.find_by_id(params[:id])
    render json: @genre
  end
end
