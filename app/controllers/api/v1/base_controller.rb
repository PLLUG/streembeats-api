class Api::V1::BaseController < ApplicationController
  protect_from_forgery with: :null_session

  before_action :authorize

  def authorize
    @current_user = UsersRepository.find_by_token(headers['Authorization'])
    p @current_user
  end
end
