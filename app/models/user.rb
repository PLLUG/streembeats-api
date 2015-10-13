class User < ActiveRecord::Base
  require ActiveModel::Validations

  validates :email, precense: true,
                    length: { maximum: 255 },
                    uniqueness: { case_sensetive: false },
                    email: true

  validates :username, uniqueness: { case_sensetive: false },
                      length: { maximum: 255 }

  validates :first_name, { maximum: 255 }
  validates :last_name, { maximum: 255 }

  def full_name
    "#{first_name} #{last_name}"
  end
end
