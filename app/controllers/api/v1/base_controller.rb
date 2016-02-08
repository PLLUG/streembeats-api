class Api::V1::BaseController < ApplicationController
  protect_from_forgery with: :null_session
  before_filter :set_headers
  after_filter :set_headers

  private
  def set_headers
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Expose-Headers'] = 'ETag'
    headers['Access-Control-Allow-Methods'] = 'POST, PUT, DELETE, GET, OPTIONS, HEAD'
    headers['Access-Control-Allow-Headers'] = '*,Origin,X-Requested-With,Content-Type,Accept,Authorization'
    headers['Access-Control-Max-Age'] = '86400'
  end
end
