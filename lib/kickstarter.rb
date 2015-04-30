require_relative 'printer'
require_relative 'backer'
require_relative 'project'
require_relative 'project_repository'
require_relative 'backer_repository'

class Kickstarter
  attr_reader :backer_repository, :project_repository, :printer, :validator
  attr_accessor :input

  def initialize
    @backer_repository = BackerRepository.new
    @project_repository = ProjectRepository.new
    @printer = Printer.new
    @input = ""
    @validator = Validator.new
  end

  def run
    @input = gets.chomp
    until quit?
      if project? && valid_project?
        create_project
      elsif back? && valid_backer?
        create_backer_for_project
      else
        printer.incorrect_base_input
      end
      @input = gets.chomp
    end
  end

  def create_project
    project = Project.new(*drop_first_input_argument)
    project_repository << project
    printer.created_project(*drop_first_input_argument)
  end

  def create_backer_for_project
    backer = Backer.new(*drop_first_input_argument)
    backer_repository << backer
    printer.created_backer(*drop_first_input_argument)
  end

  private

  def quit?
    @input == "q" || @input == "quit"
  end

  def input_arguments
    @input.split
  end

  def project?
    input_arguments.first == "project" && input_arguments.length == 3
  end

  def valid_project?
    validator.valid_name?(input_arguments[1])
  end

  def back?
    input_arguments.first == "back" && input_arguments.length == 5
  end

  def valid_backer?
    validator.valid_name?(input_arguments[1]) &&
    validator.valid_credit_card?(input_arguments[3]) &&
    validator.valid_amount?(input_arguments[4])
  end

  def drop_first_input_argument
    input_arguments.drop(1)
  end
end
