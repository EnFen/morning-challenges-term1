# - create a well named variable that contains the amount of time it took you to get to class
# - create a complete sentence  that lets us know how you got to class and how long it took
# - print this complete sentence

#commute_time_mins = 35
#puts "I walked to class today. It took #{commute_time} minutes to get to class."

# you are working at a bar where you have a current backlog of drinks to make:
# 3 cocktails
# 2 waters
# and
# 6 beers
# cocktails = 3
# waters = 2
# beers = 6

# drinks_no_arr = [3, 2, 6]
drink_hash = {cocktails: {number: 3, price: 22, cost: 8}, waters: {number: 2, price: 6, cost: 0.15}, beers: {number: 6, price: 12, cost: 3} }

# write a program that asks the customer for their order.
# if they order a cocktail, add one to the number of cocktails you need to make,
# if they order a water, add one to the number of waters you need to make,
# if they order a beer, add one to the number of beers you need to pour

valid_drink = false
while !valid_drink
    puts "What drink would you like (cocktail, water, beer)?"
    drink = gets.chomp
 case drink
 when 'cocktail'
    drink_hash[:cocktails][:number] += 1
    valid_drink = true
 when 'water'
    drink_hash[:waters][:number] += 1
    valid_drink = true
 when 'beer'
    drink_hash[:beers][:number] += 1
    valid_drink = true
 else
    puts "Please select a drink from the list"
    valid_drink = false
 end

# print the final drinks order so you know what to make
puts "I need to make #{drink_hash[:cocktails][:number]} cocktails, #{drink_hash[:waters][:number]} waters, and #{drink_hash[:beers][:number]} beers."
end

# ****
# cocktails sell for $22, and cost $8 to make
# beer sell for $12, and cost $3 to pour
# water sell for $6, and cost $0.15 to make

# print out the total profit for the orders you have
# cocktail_profit = 22 - 8
# beer_profit = 12 - 3
# water_profit = 6 - 0.15

# drinks_price_arr = [22, 6, 12]
# drinks_cost_arr = [8, 0.15, 3]

#total_profit = "%.2f" % (cocktails * cocktail_profit + beers * beer_profit + waters * water_profit)
total_profit = 0
drink_hash.each do |key, value|
    total_profit += value[:number] * (value[:price] - value[:cost])    
end

puts "The total profit from sold drinks is $#{"%.2f" % total_profit}."

#try using hashes