lines = []

File.open("reviews.txt") do |file|
    lines = file.readlines
end 

relevant_line = lines.find_all { |line| line.include?("Truncated") }
reviews = relevant_line.reject { |line| line.include?("--") }

def find_adjective(string)
    words = string.split(" ")
    index = words.find_index("is")
    words[index + 1]
end 

adjectives = reviews.map do |line|
    adjective = find_adjective(line)
        "'#{adjective.capitalize}'"
end 


puts adjectives



