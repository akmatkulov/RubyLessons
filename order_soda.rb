def order_soda(flavor, size = 'Medium', quantity = 1)
  if quantity == 1
    plular = 'soda'
  else
    plular = 'sodas'
  end
  puts "#{quantity} #{size} #{flavor} #{plular}, coming right up!"
end

order_soda('Fanta', 'litr', 2)
order_soda('Pepsi')
order_soda('Coca-Cola', 'pol-litra', 4)
