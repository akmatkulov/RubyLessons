lines = []

File.open("votes.txt") do |file|
    lines = file.readlines
end

votes = Hash.new(0)

lines.each do |line|
    name = line.chomp
    name.upcase!
    votes[name] += 1
end 

votes.each do |name, votes|
    puts "#{name}: #{votes}"
end 