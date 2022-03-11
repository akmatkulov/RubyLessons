school = {
    "Simon" => "here",
    "Jeanie" => "here",
    "Mike" => "here"
}

name = ["Simon", "Ivan", "Mike", "Rose", "Jeanie"]

name.each do |line|
    if school[line]
        puts "#{line} present"
    else
        puts "#{line} absent"
    end 
end 

