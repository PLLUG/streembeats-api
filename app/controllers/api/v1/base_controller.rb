class Api::V1::BaseController < ApplicationController
  protect_from_forgery with: :null_session

  before_action :authorize

  def authorize
  end
end
