require_relative 'test_helper'
require_relative '../lib/backer_repository'
require_relative '../lib/backer'

class BackerRepositoryTest < Minitest::Test
  def test_it_can_add_new_backers
    backer_repository = BackerRepository.new
    backer = Backer.new("John", "Awesome_Sauce", "4111111111111111", "50")

    backer_repository << backer

    assert_equal 1, backer_repository.count
  end
end
