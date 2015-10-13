class Api::V1::SessionsController < Api::V1::BaseController

  before_action :current_user

  def create
    session_service = ::SessionsService.new
    session_service.create(params[:username], params[:password])
    if session_service.success?
      render json: {}
    else
      render json: {}
    end
  end

  def destroy
    session_service = SessionsService.new().destroy
    render json: { ok: true }
  end

  private

  def current_user
    return ilavriv
  end
end
