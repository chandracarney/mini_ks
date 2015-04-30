require_relative 'test_helper'
require_relative '../lib/kickstarter.rb'

class KickstarterTest < Minitest::Test
  def test_it_creates_a_project
    ks = Kickstarter.new
    input = "project Awesome_Sauce 500"

    ks.input = input
    ks.create_project

    assert_equal 1, ks.project_repository.count
    project = ks.project_repository.find("Awesome_Sauce")
    assert_equal "Awesome_Sauce", project.project_name
    assert_equal "500", project.amount
  end

  def test_it_creates_a_backer
    ks = Kickstarter.new
    input = "backer Jim Awesome_Sauce 4111111111111111 50"

    ks.input = input
    ks.create_backer_for_project

    assert_equal 1, ks.backer_repository.count
    backer = ks.backer_repository.find("Jim")
    assert_equal "Jim", backer.backer_name
    assert_equal "50", backer.amount
  end

  def test_backer_must_match_project_name
    skip
    ks = Kickstarter.new
    project_input = "project Awesome_Sauce 500"
    backer_input = "backer Jim Awesome_Sauce 4111111111111111 50"

    ks.input = project_input
    ks.create_project

    backer = ks.project_repository.find("Awesome_Sauce")

    assert_equal "Awesome_Sauce", backer.project_name
    assert_equal 1, ks.backer_repository.count
    assert_equal "50", backer.amount
  end
end
