class Dog

  attr_reader :name, :age

  def name=(value)
    if value == ''
      raise "Name can't be blank!"
    end
      @name=value
  end

  def age=(value)
    if value < 0
      raise "An age of #{value} isn't valid!"
    end
      @age=value
  end


  def  talk
    puts "#{@name} says bark."
  end

  def move(destination)
    puts "#{@name} running to the #{destination}"
  end

  def report_age
    puts "#{@name} is #{@age} years old!"
  end
end



puts "=" * 30
rex = Dog.new

rex.age=-1
rex.talk
rex.move('home')
rex.report_age
