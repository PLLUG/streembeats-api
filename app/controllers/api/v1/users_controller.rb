class Api::V1::UsersController < ApplicationController
  def index
    @users = UsersRepository.all
    render json: @users
  end

  def show
    @user = UsersRepository.find_by_id(params[:id])
    render json: @user
  end
end
