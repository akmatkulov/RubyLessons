class Candidate 
    attr_accessor :name, :age, :occupation, :hobby, :birthplace
    def initialize(name, option = {})
        self.name = name 
        self.age = option[:age]
        self.occupation = option[:occupation]
        self.hobby = option[:hobby]
        self.birthplace = option[:birthplace]
    end 
end 

def print_summary(candidate)
    puts "Candidate: #{candidate.name}"
    puts "Age: #{candidate.age}"
    puts "Occupation: #{candidate.occupation}"
    puts "Hobby: #{candidate.hobby}"
    puts "Birthplace: #{candidate.birthplace}"
end 

ben = Candidate.new("Carl Barnes")

print_summary(ben)

p ben