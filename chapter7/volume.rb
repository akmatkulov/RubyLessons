def volume(option)
    option[:width] * option[:height] * option[:depth]
end 

result = volume(width: 10, height: 5, depth: 2.5)

puts "Volume is #{result}"