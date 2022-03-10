def triple_block_result
    puts 3 * yield
end 

triple_block_result { 2 }
triple_block_result { 5 }


def greet
    puts "Hello, #{yield}!"
end 

greet { "Liz" }

def alert_if_true
    if yield
        puts "Block returned true!"
    else
        puts "Block returned false."
    end 
end 

alert_if_true { 2+2 == 5}
alert_if_true { 2 > 1 }
