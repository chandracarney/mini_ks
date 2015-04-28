require_relative 'test_helper'
require_relative '../lib/kickstarter.rb'

class KickstarterTest < Minitest::Test
  def test_it_creates_a_project
    kickstarter = Kickstarter.new
    input = "project Awesome_Sauce 500"

    message = kickstarter.run(input)
    
    assert_equal "Added Awesome_Sauce project with target of $500", message
    assert_equal 1, kickstarter.project_repository.count
  end
end
