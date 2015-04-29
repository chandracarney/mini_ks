class BackerRepository
  def initialize
    @all = []
  end

  def count
    @all.count
  end

  def <<(backer)
    @all << backer
  end
end
