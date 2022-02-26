
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
