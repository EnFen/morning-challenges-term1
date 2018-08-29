# 1. sit beside someone new, at a new spot :slightly_smiling_face:

# 2. There is an odd employee at The Company who needs some code written that will provide
#them with the first 100 numbers of the Fibonacci sequence ….. (no one really knows why the odd
#employee needs this information - or why they can’t work it out themselves - but Monday mornings can be strange).

# def fibonacci(num1, num2, sequence = [])
#     if sequence.count() <= 100
#         sequence.push(num1)
#         sum = num1 + num2
#         fibonacci(num2, sum, sequence)
#     end
#     return sequence
# end

# puts fibonacci(1, 1)

def fibonacci(limit, sequence = [1,1])
    if sequence.count() < limit
        fibonacci(limit, sequence.push(sequence[-2] +sequence[-1]))
    end    
    return sequence    
end

output = fibonacci(20, [2, 4]) #output = fibonacci(20) will out put the first 20 items in the fib sequence, where the array argument is assumed to be [1, 1] by default

output.each_index { |index|
    puts "#{index + 1}. #{output[index]}"
 }