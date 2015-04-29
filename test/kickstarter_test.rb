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
  
  def test_it_invalidates_a_project_without_a_name
    skip
    kickstarter = Kickstarter.new
    input = "project 500"

    message = kickstarter.run(input)

    assert_equal "Please add a name for your project.", message
    assert_equal 0, kickstarter.project_repository.count
  end

  def test_it_invalidates_a_project_without_target_amount
    skip
    kickstarter = Kickstarter.new
    input = "project Awesome_Sauce"

    message = kickstarter.run(input)

    assert_equal "Please add a target amount for your project.", message
    assert_equal 0, kickstarter.project_repository.count
  end

  def test_it_creates_a_backing
    kickstarter = Kickstarter.new
    input = "back John Awesome_Sauce 4111111111111111 50"

    message = kickstarter.run(input)

    assert_equal "John backed project Awesome_Sauce for $50", message
    assert_equal 1, kickstarter.backer_repository.count
  end
end
