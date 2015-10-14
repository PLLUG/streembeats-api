class UserAuthenticator
  def initialize(user)
    @user = user
  end

  def authenticate(password)
    return false unless @user

    if user.authenticate(password)
      @user
    else
      false
    end
  end
end
