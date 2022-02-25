class Dog
  def  talk
    puts "Bark."
  end

  def move(destination)
    puts "Running to the #{destination}"
  end
end

class Cat
  def talk
    puts "Meow"
  end

  def move(destination)
    puts "Running to the #{destination}"
  end
end

class Bird
  def talk
    puts "Chirip! Chirip!"
  end

  def move(destination)
    puts "Flying to the #{destination}"
  end
end

puts "=" * 30
rex = Dog.new
rex.talk
rex.move('home')

puts "=" * 30
tom = Cat.new
tom.talk
tom.move("Jerry")

puts "=" * 30
angry = Bird.new
angry.talk
angry.move('three')
