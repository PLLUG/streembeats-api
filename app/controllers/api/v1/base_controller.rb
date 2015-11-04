class Api::V1::BaseController < ApplicationController
  protect_from_forgery with: :null_session

  before_action :authorize
  before_filter :resolve_crodomains

  def before_crodomains
    header['Access-Control-Allow-Origin'] = "*"
    header['Access-Control-Allow-Methods'] = "POST,GET,PUT,DELETE,OPTIONS"
    header['Access-Control-Allow-Headers'] = "Content-Type,Authorization"
  end

  def after_crossdomains
    header['Access-Control-Allow-Origin'] = "*"
  end

  def authorize
    @current_user = UsersRepository.find_by_token(headers['Authorization'])
  end
end
