require_relative 'test_helper'
require_relative '../lib/validator'

class ValidatorTest < Minitest::Test
  def test_backer_names_cannot_be_longer_than_20_chars
    name = "abcdefghijklmnopqrstuvwxyz"
    checker = Validator.new
    refute checker.valid_name?(name), "Name was valid."
  end

  def test_backer_names_between_4_and_20_chars_pass
    name = "John"
    checker = Validator.new
    assert checker.valid_name?(name), "Name was invalid."
  end

  def test_backer_names_can_have_a_underscore_and_dash
    name = "John-A_R"
    checker = Validator.new
    assert checker.valid_name?(name), "Name was invalid."
  end

  def test_backer_names_can_have_numbers
    name = "John_49"
    checker = Validator.new
    assert checker.valid_name?(name), "Name was invalid."
  end

  def test_backer_amounts_cannot_have_currency_symbol
    amount = "$500"
    checker = Validator.new
    refute checker.valid_amount?(amount), "Amount was valid."
  end

  def test_backer_amounts_without_currency_symbol_pass
    amount = "500"
    checker = Validator.new
    assert checker.valid_amount?(amount), "Amount was invalid."
  end

  def test_cards_cannot_be_longer_than_nineteen_digits
    credit_card = "12345678901234567890"
    checker = Validator.new
    refute checker.valid_credit_card?(credit_card), "Card was valid."
  end

  def test_validates_a_two_digit_card
    credit_card = "42"
    checker = Validator.new
    assert checker.valid_credit_card?(credit_card), "Card was invalid."
  end

  def test_invalidates_a_two_digit_card
    credit_card = "40"
    checker = Validator.new
    refute checker.valid_credit_card?(credit_card), "Card was valid."
  end

  def test_it_validates_a_sixteen_digit_card
    credit_card = "4929482784999740"
    checker = Validator.new
    assert checker.valid_credit_card?(credit_card), "Card was invalid."
  end

  def test_it_invalidates_a_sixteen_digit_card
    credit_card = "4129482784999740"
    checker = Validator.new
    refute checker.valid_credit_card?(credit_card), "Card was valid."
  end
end
