class System
  attr_reader :bodies

  @@bodies = []

  def add
    new_body = System.new
    @@bodies << new_body
  end

  def total_mass
    total_mass = 0
    @@bodies.each do |total|
      total_mass += total
    end
    total_mass
  end
end

class Body
  attr_reader :mass, :name


  def initialize(name, mass)
    @name = name
    @mass = mass
  end
end

class Planet < Body

  attr_accessor :days, :years

  def initialize(name, mass, years, days)
  @years = years
  @days = days
  super(name, mass)
  end

  def day
    puts "There are #{days}hours on planet #{name}"
  end

  def years
    puts "There are #{years} in a year on the planet #{name}"
  end
end

earth = Planet.new("Earth", 56789, 365, 24)

class Star < Body

  attr_accessor :type

  def initialize(name, mass, type)
    @type = type
    super(name, mass)
  end

  def type
    puts "The sun is a #{type} star"
  end
end

sun = Star.new("Sun", 3456, "G-Star")

class Moon < Body

  attr_accessor :month

  def initialize(name, mass, month, planet)
    @month = month
    @planet = planet
    super(name, mass)
  end

  def moon_month
    "There are #{month} days in a month on the mooon"
  end

  def output_planet
    "#{name} is orbiting the planet #{@planet.name}"
  end

end

planet = Planet.new("pluto", 543, 343, 28)
moon = Moon.new('moony', 400, 1, planet)
death_star = Moon.new('Death Star', 420, 4, planet)

puts death_star.moon_month
puts moon.output_planet
