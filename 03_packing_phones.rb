# 1. If you're sitting next to the same person you sat next
#    to yesterday, go sit next to someone else.
#
# 2. A business called “The Company” created a new phone called 
#    the companyPhone that needs packing to send away for sale. 
#
#    The companyPhone in its pretty new packaging 
#    (rectangular prism) measures as follows: 
#       width: 5cm
#       length: 7.4cm 
#       depth: 4cm 
#
#    The Company need to know how many of the phones in
#    the new packaging can fit into a box that measures:
#       width: 32cm
#       length: 43cm 
#       height: 22.1cm 
#
#    Think about writing some pseudo code first that steps 
#    through all the commands you need to write. 

def pack(phone_dim_array)
    packing_volume = 1
    phone_dimensions = phone_dim_array
    box_dimensions = [32, 43, 22.1]
    for index in 0...box_dimensions.length
        packing_volume *= (box_dimensions[index] / phone_dimensions[index]).to_i
    end
    return packing_volume
end


optimal = 
[pack([5, 7.4, 4]),
pack([5, 4, 7.4]),
pack([4, 5, 7.4]),
pack([4, 7.4, 5]),
pack([7.4, 5, 4]),
pack([7.4, 4, 5])]

puts "The most phones that can be packed into a box is #{optimal.max}."

#    Keep it as simple as you can.

# try this using the .permutations method on a single array

# Matt's solution

# phone = [5, 7.4, 4]
# box = [32, 43, 22.1]

# max_phones = 0
# phone.permutation do |orient|
#     print orient
#     puts
#     num_phones = (box[0] // orient[0]).to_i * (box[1] // orient[1]).to_i * (box[2] / orient[2]).to_i
#     max_phones = num_phones if num_phones > max_phones
# end

# puts max_phones