def toppings
  puts "What would you like on your pizza?"
  yield("pepperoni","mushrooms","onions")
end

toppings{|topping_1,topping_2,topping_3| puts "I want #{topping_1}, #{topping_2}, and #{topping_3} on my pizza!"}