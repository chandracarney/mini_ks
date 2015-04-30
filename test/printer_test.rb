require_relative 'test_helper'
require_relative '../lib/printer'

class PrinterTest < Minitest::Test
  def test_it_has_expected_main_messages
    printer = Printer.new
    expected = [:goodbye, :instructions]
    expected.each do |message|
      assert printer.respond_to?(message), "Printer should have a #{message} method"
    end
  end

  def test_it_has_expected_created_messages
    printer = Printer.new
    expected = [:created_project, :created_backer]
    expected.each do |message|
      assert printer.respond_to?(message), "Printer should have a #{message} method"
    end
  end

  def test_it_has_expected_error_messages
    printer = Printer.new
    expected = [:incorrect_base_input, :invalid_name, :invalid_currency, :invalid_cc]
    expected.each do |message|
      assert printer.respond_to?(message), "Printer should have a #{message} method"
    end
  end
end
