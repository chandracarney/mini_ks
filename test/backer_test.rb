require_relative 'test_helper'
require_relative '../lib/backer'

class BackerTest < Minitest::Test
  def test_it_exists_with_correct_information
    assert Backer.new("John", "Awesome_Sauce", "4111111111111111", "50")
  end
end
