class BackerRepository
  def initialize
    @all = []
  end

  def find(backer_name)
    @all.find { |backer| backer.backer_name == backer_name }
  end

  def count
    @all.count
  end

  def <<(backer)
    @all << backer
  end
end
