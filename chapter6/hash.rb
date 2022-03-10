contents = []
File.open("sample.txt") do |file|
    contents = file.readlines
end 

puts contents






