class Api::V1::SessionsController < Api::V1::BaseController
  def create
    render json: {success: true}
  end

  def destroy
    TokenService.new(current_user).clear
    render json: { success: true }
  end
end
