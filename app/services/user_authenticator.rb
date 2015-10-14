class UserAuthenticator
  def initialize(user)
    @user = user
  end

  def authenticate(password)
    return false unless @user
  end
end
