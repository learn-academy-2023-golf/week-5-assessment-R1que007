# ASSESSMENT 5: Interview Practice Questions

Answer the following questions.

First, without external resources. Challenge yourself to answer from memory.

Then, research the question to expand on your answer. Even if you feel you have answered the question completely on your own, there is always something more to learn. Write your researched answer in your OWN WORDS.

1. Compare and contrast arrays and hashes in Ruby. Include at least two differences and two similarities.

Your answer: Arrays and Hashes are similar in the way they store information or data. Hashes, however, use symbols to access that data whereas data in arrays are accessed by calling on the index.

Researched answer:

2. What does it mean to implement a TTD workflow?

Your answer: A TTD workflow consists of the following:
-creating a test
-running a test expecting it to fail 
-writing code to make the test pass
-refactoring
-Repeat


Researched answer: It means implementing an approach that emphasizes writting tests before writing the actual code.TTD follows a cycle known as "Red-Green-Refator" cycle. Initially, tests should fail for not having implemeted the functionality or written the code. We then get the tests to pass by writting the minimum amount of code possible. Once the code passes we refactor.

3. Why would super be used in a Ruby class?

Your answer: Super is used to access data in a parent class.

Researched answer: In method overriding, super is a keyword used to call a method of the same name from its superclass. It is used to extend or override the behavior of a method that is defined in a parent clas(superclass) while still retaining some or all of the functionality from the parent class. In Construsctor overriding, super is used when you want to modify the constructor of a subclass. The keyword super is used to invoke the constructor of the parent class to ensure that any necessay initialization form the parent class is performed before adding specific initialization for the subclass.

4. STRETCH: What is the difference between inheritance in JavaScript and inheritance in Ruby?

Researched answer: Both are ways to create a relationship between classes, however, JS uses prototypal inheritance and Ruby uses classical inheritance with classess inheriting from other classes. Ruby supports multiple inheritance and JavaScript does not.

## Looking Ahead: Terms for Next Week

Research and define the following terms to the best of your ability.

1. PostgreSQL: Is an open-source relational database management system(RDBMS) used for storing and managing structure data.

2. Ruby on Rails: Is an open-source web application framework designed to streamline and simplify web application development.

3. Active Record: Is a component of Ruby on Rails that provides an Object Relational Mapping (ORM) layer, allowing Ruby apps to interact with databases using Ruby-based operations.
