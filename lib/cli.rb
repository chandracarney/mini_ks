require_relative 'printer'

class CLI
  attr_reader :printer, :input

  def initialize
    @printer = Printer.new
    @kickstarter = Kickstarter.new
  end

  def start
    printer.instructions
    kickstarter.run
    printer.goodbye
  end
end
