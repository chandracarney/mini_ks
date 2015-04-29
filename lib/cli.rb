require_relative 'printer'

class CLI
  attr_reader :printer

  def initialize
    @printer = Printer.new
  end

  def start
    printer.instructions
    input = gets.chomp
    until quit?(input)
      message = Kickstarter.new.run(input)
      puts message
    end
  end

  def instructions?(input)
    input == "i"
  end

  def begin?(input)
    input == "b" || input == "y"
  end

  def quit?(input)
    input == "q" || input == "quit"
  end
end
