
class Vehicle

  attr_accessor :odometr, :gas_used

  def accelerate
    puts "Floor it!"
  end

  def sound_horn
    puts "Beep, beep!"
  end

  def steer
    puts "Turn front 2 wheels."
  end

  def mileage
    @odometr / @gas_used
  end

end

class Car < Vehicle
end

class Truck < Vehicle
  attr_accessor :cargo
  def load_bed(contents)
    puts "Securing #{contents} in the truck bed."
    @cargo = contents
  end 
end

class Motorcycle < Vehicle
end
