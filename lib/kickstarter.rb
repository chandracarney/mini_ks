require_relative 'project'
require_relative 'project_repository'

class Kickstarter
  attr_reader :project_repository

  def initialize
    @project_repository = ProjectRepository.new
  end

  def run(input)
    args = input.split(" ")
    if args.first == "project"
      project = Project.new(args[1], args[2])
      project_repository << project
      "Added #{project.name} project with target of $#{project.target_amount}"
    end
  end
end
