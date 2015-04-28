class Project
  attr_reader :name, :target_amount
  def initialize(name, target_amount)
    @name = name
    @target_amount = target_amount
  end
end
