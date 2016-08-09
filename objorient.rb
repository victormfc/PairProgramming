class Car
  def initialize(sound)
    @sound = sound
    @cities = []
  end
  def make_noise
    puts @sound
  end

  def self.speed_control
    puts "Velocidad :"
    speed = gets.chomp.to_i
    if speed > 100
      puts " Tu velocidad es de #{speed}"
    end
  end

  def visit_city(city)
    @cities.push(city)
  end

  def cities
    puts @cities
  end
end

class RacingCar < Car
    def initialize
      @sound = "BROOOOMMM"
    end
  end

class Person 
  attr_reader :name
  def initialize (name, age)
      @name = name
      @age = age
  end

end

car = Car.new("baaaaaa")
#car.visit_city("Madrid")
#car.cities
car.make_noise
rc = RacingCar.new
puts rc.make_noise