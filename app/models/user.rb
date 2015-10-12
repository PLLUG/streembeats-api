class User < ActiveRecord::Base
  require ActiveModel::Validations

  validates :email, precense: true
  validates :email, uniqueness: true
  validates :email, email: true

  validates :username, uniqueness: true
  validates :username, precense: true
end
