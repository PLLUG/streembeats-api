class Api::V1::SessionsController < Api::V1::BaseController
  def create
    user = UserRepository.find_by_email(params[:email])
    if UserAuthenticator.new(user).authenticate(params[:password])
      TokenService.new(user).create
    else
    end
  end

  def destroy
  end
end
