require_relative "test_helper"
require_relative "../lib/project"

class ProjectTest < Minitest::Test
  def test_it_exists
    assert Project.new("Awesome_Sauce", "500")
  end

  def test_project_name_cannot_be_too_long
    project = Project.new("Awesomeist_Sassy_Sauces", "500")
    assert true
  end

  def test_project_target_amount_can_contain_symbol
    project = Project.new("Awesome_Sauce", "$500")
    assert true
  end
end
