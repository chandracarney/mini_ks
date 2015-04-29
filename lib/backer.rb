class Backer
  attr_reader :name, :project_name, :credit_card, :amount
  def initialize(name, project_name, credit_card, amount)
    @name = name
    @project_name = project_name
    @credit_card = credit_card
    @amount = amount
  end
end
