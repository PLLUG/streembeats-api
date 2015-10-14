class Api::V1::SessionsController < Api::V1::BaseController
  def create
    user = UsersRepository.find_by_email(params[:email])
    p params[:password]
    if UserAuthenticator.new(user).authenticate(params[:password])
      token = TokenService.new(user).create
      render json: { token: token }
    else
      render json: { error: 'User is not authenticated' }
    end
  end

  def destroy
    TokenService.new(current_user).clear
    render json: { success: true }
  end
end
