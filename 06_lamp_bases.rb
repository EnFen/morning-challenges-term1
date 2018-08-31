# The Company is currently wanting to produce another 500 units of product sku 276834, which is a lamp with a circular base. Unfortunately, a staff member forgot to order the plywood to make the base and didn’t account for the cost of this wood.
# Plywood can be purchased in 1200 X 2400 mm sheets at a cost of $28.47 per sheet.
# Each lamp base is a circle with a diameter of 320mm. 
# What is the total cost of ordering the plywood for the bases, and how much plywood is wasted?
no_units = 500

lamp_d = 320
plywood_w = 1200
plywood_l = 2400

row_offset = Math.sqrt((lamp_d ** 2 - (lamp_d / 2) ** 2))

 # each piece of plywood can be packed with packing of diameter + n rows of row_offset 

number_rows_across_width = (((plywood_w - lamp_d) / row_offset) + 1)
# puts number_rows_across_width

# number_rows_across_length = (((plywood_l - lamp_d) / row_offset) + 1).to_i
# puts number_rows_across_length

number_lamps_length = plywood_l / lamp_d
# puts number_lamps_length.to_i

# remainder = plywood_l % lamp_d
# puts remainder

total_lamps_per_sheet = number_rows_across_width * number_lamps_length

total_sheets_needed = (no_units / total_lamps_per_sheet).ceil
puts "The total number of plywood sheets required is #{total_sheets_needed}"
plywood_cost = total_sheets_needed * 28.47
puts "The total cost of the plywood is $#{'%.2f' % plywood_cost}"

area_of_ply = plywood_w * plywood_l * total_sheets_needed

area_lamps = (Math::PI * (lamp_d / 2) ** 2) * no_units

total_wasted_area = area_of_ply - area_lamps

puts "The total wasted area of plywood is #{'%.2f' % total_wasted_area} square millimeters"