class Playlist < ActiveRecord::Base
  belongs_to :user

  validates :name, presence: true,
                   uniqueness: { case_sensetive: true }

  validates :user, presence: true
end
