prices = [3.99, 25.00, 8.99]

def total(prices)
    amount = 0
    prices.each { |item| amount += item }
    amount
end 

def refund(prices)
    amount = 0
    prices.each { |item| amount -= item }
    amount
end 

def show_discount(prices)
   prices.each do |item|
        amount_off = item / 3.0
        puts format("Your discount: $%.2f", amount_off)
   end   
end 


puts format("%.2f", total(prices))
puts format("%.2f", refund(prices))
show_discount(prices)

