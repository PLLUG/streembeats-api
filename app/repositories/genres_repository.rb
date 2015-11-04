class GenresRepository
  def self.all
    Genre.all
  end

  def self.find_by_id(id)
    Genre.where(id: id).first
  end

  def self.find_by_criteria(criteria)
    Genre.where(criteria)
  end
end
