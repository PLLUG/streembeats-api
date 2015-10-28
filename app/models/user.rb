class User < ActiveRecord::Base
  include ActiveModel::Validations

  validates :email, presence: true,
                    length: { maximum: 255 },
                    uniqueness: { case_sensetive: false },
                    email: true

  validates :username, presence: true,
                       uniqueness: { case_sensetive: false },
                       length: { maximum: 255 }

  validates :first_name, length: { maximum: 255 }
  validates :last_name, length: { maximum: 255 }

  def full_name
    "#{first_name} #{last_name}"
  end
end
