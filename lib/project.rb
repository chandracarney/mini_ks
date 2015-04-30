class Project
  attr_reader :project_name, :amount
  
  def initialize(project_name, amount)
    @project_name = project_name
    @amount = amount
  end
end
