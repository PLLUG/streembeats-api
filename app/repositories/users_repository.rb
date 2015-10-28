class UsersRepository
  def self.all
    User.all
  end

  def self.find_by_id(id)
    User.where(id: id).first
  end

  def self.find_by_email(email)
    User.where(email: email).first
  end

  def self.find_by_token(token)
    @user = User.where(token: token).first
  end
end
