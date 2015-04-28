require_relative 'printer'

class CLI
  attr_reader :printer

  def initialize
    @printer = Printer.new
  end

  def start
    printer.project_introduction

    input = gets.chomp
    message = Kickstarter.run(input)
    puts message
  end
end
