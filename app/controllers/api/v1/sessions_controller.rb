class Api::V1::SessionsController < Api::V1::BaseController
  def create
    session_service = SessionsService.new
    session_service.create(params[:username], params[:password])
    if session_service.success?
      render :json UserSerializer.to_json(current_user)
    else
      render :json session_service.errors
    end
  end

  def destroy
    session_service = SessionsService.destroy
  end
end
