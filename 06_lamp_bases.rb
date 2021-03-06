# The Company is currently wanting to produce another 500 units of product sku 276834, which is a lamp with a circular base. Unfortunately, a staff member forgot to order the plywood to make the base and didn’t account for the cost of this wood.
# Plywood can be purchased in 1200 X 2400 mm sheets at a cost of $28.47 per sheet.
# Each lamp base is a circle with a diameter of 320mm. 
# What is the total cost of ordering the plywood for the bases, and how much plywood is wasted?
<<<<<<< HEAD
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
=======

class PlywoodSheet
    attr_accessor :width, :height, :cost

    def initialize(width, height, cost)
        @width = width
        @height = height
        @cost = cost
    end
    def surface_area
        return @width * @height
    end
    # Calculate how many lamp bases can be cut from this sheet.
    # Returns the number of bases and the surface area wasted.
    def how_many_bases(lamp_base)
        bases_per_sheet = (@width / lamp_base.diameter).to_i * (@height / lamp_base.diameter).to_i
        wastage = self.surface_area - (bases_per_sheet * lamp_base.surface_area)
        return bases_per_sheet, wastage
    end
end

class LampBase
    attr_accessor :radius

    def initialize(diameter)
        @radius = diameter / 2.0
    end
    def diameter
        return @radius * 2
    end
    def surface_area
        return Math::PI * @radius * @radius
    end
end

# main

# ASSUMPTION: Every plywood sheet (including the last one) has the maximum number of bases possible cut from it, even if this yields more than lamp_bases_required bases. The extras are assumed to be stored in a warehouse until needed.
plywood = PlywoodSheet.new(1200, 2400, 28.47)
lamp_base = LampBase.new(320)
lamp_bases_required = 500
# now compute the number of sheets required to have enough wood to make lamp_bases_required bases
# ceil is used to round up to the nearest integer, since we can't buy a fraction of a plywood sheet.
bases_per_sheet, wastage_per_sheet = plywood.how_many_bases(lamp_base)
sheets_required = (lamp_bases_required / bases_per_sheet).ceil
# compute cost and wastage totals
total_cost = sheets_required * plywood.cost
total_wastage = sheets_required * wastage_per_sheet

puts "You will need #{sheets_required} sheets of plywood which will cost a total of $#{total_cost}."
puts "You will waste #{(total_wastage / 1000000).round(3)} sq metres of plywood."
>>>>>>> 11_vowels
