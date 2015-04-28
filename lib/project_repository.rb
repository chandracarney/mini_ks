class ProjectRepository
  def initialize
    @all = []
  end

  def count
    @all.count
  end

  def <<(project)
    @all << project
  end
end
