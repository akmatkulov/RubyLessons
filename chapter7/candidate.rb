class Candidate 
    attr_accessor :name, :age, :occupation, :hobby, :birthplace
    def initialize(name, age:, occupation:, hobby: nil, birthplace: "Sleepy Creek")
        self.name = name 
        self.age = age
        self.occupation = occupation
        self.hobby = hobby
        self.birthplace = birthplace
    end 
end 

def print_summary(candidate)
    puts "Candidate: #{candidate.name}"
    puts "Age: #{candidate.age}"
    puts "Occupation: #{candidate.occupation}"
    puts "Hobby: #{candidate.hobby}"
    puts "Birthplace: #{candidate.birthplace}"
end 


p Candidate.new("Amy Nguyen", age: 22, occupation: "Engineer")