require_relative "test_helper"
require_relative "../lib/project"

class ProjectTest < Minitest::Test
  def test_it_exists
    assert Project.new("Awesome_Sauce", "500")
  end
end
