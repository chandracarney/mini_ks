require_relative 'test_helper'
require_relative '../lib/printer'

class PrinterTest < Minitest::Test
  def test_it_displays_a_welcome_message
    printer = Printer.new
    expected = [:introduction, :goodbye, :instructions]
    expected.each do |message|
      assert printer.respond_to?(message), "Printer should have a #{message} method"
    end
  end
end
