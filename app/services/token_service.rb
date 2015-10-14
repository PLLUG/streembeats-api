class TokenService
  def initialize(user)
    @user = user
  end

  def create
    @token = Digest::SHA1.hexdigest([Time.now, rand].join)
    user.token = @token
    @user.save!
    @token
  end
end
