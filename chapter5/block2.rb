def give
    yield("2 turtle doves", "1 partrige")
end 

give do |present1, present2|
    puts "My method gave to me ... "
    puts present1, present2
end 