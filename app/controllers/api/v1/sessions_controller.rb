class Api::V1::SessionsController < Api::V1::BaseController
  def create
    session_service = SessionsServise.new
    session_service.create(params[:username], params[:password])
    if session_service.success?
      render json: Api::V1::UserSerializer.to_json(current_user)
    else
      render json: Api::V1::ErrorSerializer.new(session_service.errors)
    end
  end

  def destroy
    session_service = SessionsService.new().destroy
    render :json { ok: true }
  end
end
