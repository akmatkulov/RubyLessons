def print_block_result
    block_result = yield
    puts block_result
end 

print_block_result { 1+1 }

print_block_result do 
    "I'm not the last expression, so I'm not the return value."
    "I'm the result"
end 

print_block_result { "I hated Truncated".include?("Truncated") }
