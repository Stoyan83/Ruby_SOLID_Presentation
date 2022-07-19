%title: SOLID
%author: Stoyan Stoyanov
%date: 2022-07-20

-> ## What is SOLID <-

SOLID Principles is a coding standard
that all developers should have
a clear concept for developing software properly
to avoid a bad design.
It was promoted by Robert Martin in 2000
and is used across the object-oriented design.
When applied properly it makes your code more
extendable, logical, easier to read and testable.

---

When the developer builds software following a bad design,
the code can become inflexible and fragile.
Small changes in the software can result in bugs.
For these reasons, we should follow SOLID Principles.

---
SOLID is an acronym that stands for five key design principles:

##      ┌───┐
##    │ S │ Single Responsibility principle
##      └───┘
┌───┐
│ O │ Open-Closed principle
└───┘
*┌───┐
*│ L │ Liskov Substitution principle*
*└───┘
┌───┐
│ I │ Interface Segregation principle
└───┘
*┌───┐
*│ D │ *Dependency Inversion principle*
*└───┘

---
-> ## Single Responsibility principle  <-

*A class should have one, and only one, reason to change.*

One class should serve only one purpose.
This does not mean that each class should
have only one method, but they should all relate
directly to the responsibility of the class.
All the methods and properties should work towards the same goal.
When a class serves multiple responsibilities,
it should be made into a new class

```
class Example
    def info
        puts "Some real examples are coming soon."
    end
end
```

---
-> Open-Closed principle <-

**Entities should be open for extension, but closed for modification.**

Software entities (classes, modules, functions)
should be extendable without actually changing
the contents of the class you’re extending.
If we could follow this principle,
it is possible to modify the behavior of our code
without ever touching a piece of the original code.

```
class SecondExample < Example
    def info
       super
       puts "I promise real examples in a minute."
    end
end
```

---
-> Interface Segregation principle <-

**A client should not be forced to implement an interface that it doesn’t use.**

This rule means that we should break our interfaces
into many smaller ones, so they better satisfy
the exact needs of our clients.

Similar to the Single Responsibility Principle,
the goal of the Interface Segregation Principle is
to minimize side consequences and repetition
by dividing the software into multiple, independent parts.


---

**OK that was the boring part with theory**
**and Wikipedia definitions.**
**Now let's get our hands dirty and write some code editor!**

stoyan@StoyanPc:~$ `code`

---
