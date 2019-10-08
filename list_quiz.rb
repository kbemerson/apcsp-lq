# def three_even(list)
#     count = 0
#     list.size.times do |num|
#         if num % 2 == 0
#             count = count + 1
#         end
#         if count == 3
#             return 3
#         else 
#             return false
#         end
#     end
# end
# puts three_even([2, 1, 3, 5])   # false
# puts three_even([2, 4, 12, 5])  # true
# puts three_even([2, 1, 4, 6])   # false
# puts three_even([1, 4, 6, 4])   # true
# puts three_even([1])            # false


# def bigger_two(list1, list2)
#     list1.size.times do |num|
#         num1 = num + num
#         return num1
#     end
#     list2.size.times do |num|
#         num1 = num + num
#         return num2
#     end
#     if num1 > num2
#         return list1
#     else num2 > num1
#         return list2
#     end
#     if num1 = num2
#         return list1
#     end
# end
# puts bigger_two([1, 2], [3, 4]) # [3, 4]
# puts bigger_two([1, 7], [4, 4]) # [1, 7]


def series_up(n)
    n.size.times do |num|
        n1 = num.size
        n2 = num.size - 1
        n3 = num.size - 2
        n4 = num.size - 3
        if num == 1
            return n1
        end
        if num == 2
            return n2, n1, n1
        end
        if num == 3
            return n3, n3, n2, n3, n2, n1, n1
        end
        if num == 4
            return n4, n4, n3, n4, n3, n2, n4, n3, n2, n1
        end
    end
end
puts series_up(1)
puts series_up(2)
puts series_up(3)
puts series_up(4)