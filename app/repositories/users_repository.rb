class UsersRepository
  def self.all
    User.all
  end

  def self.find_by_id(id)
    User.find_by_id(id)
  end

  def self.find_by_email(email)
    User.find_by_email(email)
  end

  def self.find_by_token(token)
    User.find_by_token(token)
  end
end
