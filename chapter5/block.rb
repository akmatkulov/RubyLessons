def my_method(&block)
    puts "We're in the method, about to invoke your block!"
    block.call
    puts "We're back in the method!"
end 

my_method { puts "Hello, I am Block!!!" }
my_method { puts "Firsts" }
my_method { puts "Second"}


