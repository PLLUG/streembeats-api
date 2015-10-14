class UsersRepository
  def self.all
    User.all
  end

  def self.find_by_id(id)
    User.find_by_id(id)
  end
end
