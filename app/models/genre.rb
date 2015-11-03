class Genre < ActiveRecord::Base
  validates :title, presence: true,
                    uniqueness: { case_sensetive: false },
  validates :wikipedia_link, uniqueness: { case_sensetive: false }
end
