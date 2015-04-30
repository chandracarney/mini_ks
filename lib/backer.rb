class Backer
  attr_reader :backer_name, :project_name, :credit_card, :amount

  def initialize(backer_name, project_name, credit_card, amount)
    @backer_name = backer_name
    @project_name = project_name
    @credit_card = credit_card
    @amount = amount
    @printer = Printer.new
  end
end
