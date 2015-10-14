class UserAuthenticator
  def initialize(user)
    @user = user
  end

  def authenticate(password)
    return false unless @user

    if Bcrypt::Password.new(@user.password_digest) == password
      @user
    else
      false
    end
  end
end
