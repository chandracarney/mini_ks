require_relative 'printer'
require 'luhn'

class Validator
  attr_reader :printer
  def initialize
    @printer = Printer.new
  end

  def valid_name?(name)
    name.match(/^[\w-]{4,20}$/) ? true : printer.invalid_name
  end

  def valid_amount?(amount)
    amount.match(/^([\d]+|[\d]+.\d{2})$/) ? true : printer.invalid_currency
  end

  def valid_credit_card?(credit_card)
    credit_card.length < 19 && Luhn.valid?(credit_card) ? true : printer.invalid_cc
  end
end
