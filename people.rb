class Person

  attr_accessor :first_name

  def initialize(first_name)
    @first_name = first_name
  end

  def greeting
    puts "Hi, my name is #{@first_name}"
  end
end

class Student < Person

  attr_accessor :first_name

  def learn
    puts "I get it!!!"
  end
end

class Instructor < Person

attr_accessor :first_name

  def teach
    puts "Everything in ruby is an object!!!"
  end
end


chris = Instructor.new('Chris')
puts chris.greeting
christina = Student.new('Christina')
puts christina.greeting
puts chris.teach
puts christina.learn

# Christina.teach will not work because the teach method is only within the Instructor class and the instructor class has not been inherited into the student class 







# Call the teach method on your instructor instance and call the learn method on your student. Next, call the teach method on your student instance. What happens? Why doesn't that work? Leave a comment in your program explaining why.
