##mini_ks

After a lot of thought and planning, I initially decided to go towards a CLI that would interface with a Rails API (the storage and validations would come easily). I started test driving the API to create projects on Sunday. After I woke up on Monday, I decided to start over with a simple CLI application. Here's the implementation and documentation, feel free to follow along with my commits. 

The REPL (read–eval–print loop) is hard to test in an application like this. Something I've been focusing on is getting parts out of the main CLI class as quickly as possible so that other unit tests can come about.
