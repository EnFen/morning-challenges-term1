# - create a well named variable that contains the amount of time it took you to get to class
# - create a complete sentence  that lets us know how you got to class and how long it took
# - print this complete sentence

#commute_time = 35
#puts "I walked to class today. It took #{commute_time} minutes to get to class."

# you are working at a bar where you have a current backlog of drinks to make:
# 3 cocktails
# 2 waters
# and
# 6 beers
cocktails = 3
waters = 2
beers = 6

# write a program that asks the customer for their order.
# if they order a cocktail, add one to the number of cocktails you need to make,
# if they order a water, add one to the number of waters you need to make,
# if they order a beer, add one to the number of beers you need to pour



begin 
valid_drink = false
while !valid_drink
    puts "What drink would you like (cocktail, water, beer)?"
    drink = gets.chomp
 case drink
 when 'cocktail'
    cocktails += 1
    valid_drink = true
 when 'water'
    waters += 1
    valid_drink = true
 when 'beer'
    beers += 1
    valid_drink = true
 else
    puts "Please select a drink from the list"
    valid_drink = false
 end
end

# print the final drinks order so you know what to make
puts "I need to make #{cocktails} cocktails, #{waters} waters, and #{beers} beers."
end

# ****
# cocktails sell for $22, and cost $8 to make
# beer sell for $12, and cost $3 to pour
# water sell for $6, and cost $0.15 to make

# print out the total profit for the orders you have
cocktail_profit = 22 - 8
beer_profit = 12 - 3
water_profit = 6 - 0.15

total_profit = "%.2f" % (cocktails * cocktail_profit + beers * beer_profit + waters * water_profit)

puts "The total profit from sold drinks is $#{total_profit}."