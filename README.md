#mini_ks

## Requirements

You will need the following things properly installed on your computer.

* [Git](http://git-scm.com/)
* [Ruby](https://www.ruby-lang.org/en/downloads/)

## Installation

* Clone the repo  
`$ git clone https://github.com/chandracarney/mini_ks.git`

* Change into the new directory:  
`$ cd mini_ks`

* Run Gem installation commands
`$ bundle`  

### Running Tests

* `rake test`

### Running the Program

* `ruby mini_ks.rb`

##setup

After a lot of thought and planning, I initially decided to go towards a CLI that would interface with a Rails API (the storage and validations would come easily). I started test driving the API to create projects on Sunday. The next day I decided to start over with a simple CLI application. Here's the implementation and documentation, feel free to follow along with my commits. 

---

The REPL (read–eval–print loop) is hard to test in an application like this. Something I've been focusing on is getting parts out of the main CLI class as quickly as possible so that other unit tests can come about.

---

I made the decision to move the REPL out of the CLI class and into the Kickstarter class so that it would be more clear where the loop was coming from. I broke projects and backers out into their own classes so that they would be able to take different numbers of arguments and tested that they both could be created. The validations live in a class of their own so that, if there are any similar validations that need to be passed for different objects in different classes (there are some), there would not be code duplication. These validations are tested for correct and incorrect input.

In the Kickstarter class, the projects and backers must have the correct number of arguments and pass validations like name length, credit card validation, etc. before they are passed into the model and created. I played around with validating in the Project or Backer class, but I ultimately made the choice not to perform validations after sent to the model so that we weren't instantiating the object unnecessarily. After the validations are passed, the object is created and added to the repository. The repositories are in charge of holding the inforamtion for each project and backer; this could be written to a .csv or could be hooked into a DB like SQL or Postgres, but is currently done in memory and will not persist if the user quits the Kickstarter application. There are two large "integration" tests for creating projects and creating backers to test the full happy path. (The sad path is tested through validations.) There is one "integration" started for ensuring that there is a project with a name that matches what a backer is trying to fund, but it is not implemented yet. 
