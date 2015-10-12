class User < ActiveRecord::Base
  validates :email, precense: true
  validates :email, uniqueness: true
  validates :email, { with: /\A[^@\s]+@([^@.\s]+\.)*[^@.\s]+\z/ }

  validates :username, uniqueness: true
  validates :username, precense: true
end
