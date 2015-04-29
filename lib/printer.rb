class Printer
  def introduction
    puts "Welcome to Mini Kickstarter. You may (b)egin, view (i)nstructions, or (q)uit."
  end

  def instructions
    puts "Start by creating a project. You will need to include information about your \nproject (including project name and the target amount) in the following format: \n 'Project <name of your project> <target amount>' \n\nYou may then back projects by including the name of the person backing the \nproject, the project name, the credit card number, and the backing amount \nin the following format: \n 'Back <name of person> <name of project> <credit card number> <backing amount>'"
  end

  def goodbye
    puts "We hope to see you creating and backing again soon."
  end
end
