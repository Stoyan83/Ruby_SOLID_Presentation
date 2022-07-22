# Functions that use pointers or references to base classes must be able to use objects of derived classes without knowing it

# Derived types must be completely substitutable for their base types
# Derived classes only extend functionalities of the base class

# 01. Liskov substitution Violation & inheritance Violation

class Duck
  def quack
  end

  def walk
  end

  def fly
  end
end

class RubberDuck < Duck
  def quack
    "Squeek"
  end

  def walk
    raise "I cannot walk by myself"
  end

  def fly
    raise "I cannot fly by myself"
  end
end

class RobotDuck < Duck
  def quack
    "Robotic quacking"
  end

  def walk
    "Robotic walking"
  end

  def fly
    "Fly like a robot"
  end
end

rubber_duck = RubberDuck.new
puts rubber_duck.quack
# rubber_duck.walk
# rubber_duck.fly

# robot_duck = RobotDuck.new
# puts robot_duck.quack
# puts robot_duck.walk
# puts robot_duck.fly

# 02. Liskov substitution Solution

# class Duck

#     def quack
#     end
# end

# class RubberDuck < Duck

#     def quack
#         "Squeek"
#     end
# end

# class RobotDuck < Duck
#     def quack
#         'Robotic quacking'
#     end

#     def walk
#         'Robotic walking'
#     end

#     def fly
#         'Fly like a robot'
#     end
# end

# rubber_duck = RubberDuck.new
# puts rubber_duck.quack

# robot_duck = RobotDuck.new
# puts robot_duck.quack
# puts robot_duck.walk
# puts robot_duck.fly
