class ProjectRepository
  def initialize
    @all = []
  end

  def find(project_name)
    @all.find { |project| project.project_name == project_name }
  end

  def count
    @all.count
  end

  def <<(project)
    @all << project
  end
end
