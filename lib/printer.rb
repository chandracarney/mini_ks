class Printer
  def instructions
    puts "Start by creating a project. You will need to include information about your \nproject (including project name and the target amount) in the following format: \n 'Project <name of your project> <target amount>' \n\nYou may then back projects by including the name of the person backing the \nproject, the project name, the credit card number, and the backing amount \nin the following format: \n 'Back <name of person> <name of project> <credit card number> <backing amount>'"
  end

  def goodbye
    puts "We hope to see you creating and backing again soon."
  end

  def created_project(project_name, amount)
    puts "Added #{project_name} project with target of #{amount}"
  end

  def created_backer(backer_name, project_name, _, amount)
    puts "#{backer_name} backed project #{project_name} for $#{amount}"
  end

  def incorrect_base_input
    puts "Please add a <project> or <back> a project."
  end

  def invalid_name
    puts "Name must be longer than 4 or shorter than 20 characters."
  end

  def invalid_currency
    puts "Amount cannot include a currency symbol."
  end

  def invalid_cc
    puts "ERROR: This card is invalid."
  end
end
