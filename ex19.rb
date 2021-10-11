# Task 1
# class Person

#   def initialize(name)
#     @name = name
#   end
# end

# person = Person.new('L. Ron')
# p person

# Task 2
# class Person
#   attr_reader :name
#   attr_writer :name
#     def initialize(name)
#       @name = name
#     end
#   end
  
#   person = Person.new('L. Ron')
#   person.name='Jim'
#   puts person.name

# Task 3
class Person

  attr_accessor :name

  def initialize(name)
    @name = name
  end

end

p = Person.new('L. Ron')
puts p.name

p.name = "Natalia Yuzhakova"
puts p.name

   
