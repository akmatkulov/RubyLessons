lines = []

File.open("reviews.txt") do |file|
    lines = file.readlines
end 

relevant_line = lines.find_all { |line| line.include?("Truncated")}

puts relevant_line



