require 'bcrypt'

class UserAuthenticator
  def initialize(user)
    @user = user
  end

  def authenticate(password)
    return false unless @user
    hashed_password = BCrypt::Password.new(password)
    if @user.authenticate(hashed_password)
      @user
    else
      false
    end
  end
end
