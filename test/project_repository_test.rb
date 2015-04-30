require_relative 'test_helper'
require_relative '../lib/project_repository'
require_relative '../lib/project'

class ProjectRepositoryTest < Minitest::Test
  def test_it_can_add_new_projects
    project_repository = ProjectRepository.new
    project = Project.new("Awesome_Sauce", "400")

    project_repository << project

    assert_equal 1, project_repository.count
  end
end
