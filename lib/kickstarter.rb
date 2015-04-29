require_relative 'backer'
require_relative 'project'
require_relative 'project_repository'
require_relative 'backer_repository'

class Kickstarter
  attr_reader :project_repository, :backer_repository

  def initialize
    @project_repository = ProjectRepository.new
    @backer_repository = BackerRepository.new
  end

  def run(input)
    args = input.split(" ")
    if args.first == "project"
      add_project(args)
    elsif args.first == "back"
      add_backing(args)
    else
      "Please add a <project> or <back> a project."
    end
  end

  def add_project(args)
    if args[2]
      project = Project.new(args[1], args[2])
      project_repository << project
      puts "Added #{project.name} project with target of $#{project.target_amount}"
    end
  end

  def add_backing(args)
    if args[4]
      backer = Backer.new(args[1], args[2], args[3], args[4])
      backer_repository << backer
      "#{backer.name} backed project #{backer.project_name} for $#{backer.amount}"
    end
  end

  # def validate_input(args)
  #   elsif args[2] && args.last[/\d/]
  #     add_project(args)
  #   else "Please add a name for your project."
  #   end
  # end
end
