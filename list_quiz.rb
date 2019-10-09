def three_even(list)                        # I ended up asking for help on this one. I made it a little too complicated, and ended up making my code shorter. I changed my count from needing three variables to be true to just having one. 
    count = 0
    list.each do |num|
        if num % 2 == 0
            count += 1
        end
    end
    if count == 3
        return true
    else 
        return false
    end
end
# puts three_even([2, 1, 3, 5])   # False
# puts three_even([2, 4, 12, 5])  # True
# puts three_even([1, 6, 4, 1])   # False


def bigger_two(list1, list2)                # I realizes I actually didn't need a loop here. I rewrote my code and changed the returns to return just one line. 
    num1 = list1[1].to_i + list1[2].to_i
    num2 = list2[1].to_i + list2[2].to_i
    if num1 > num2
        return "#{list1}"
    else num2 > num1
        return "#{list2}"
    end
    if num1 = num2
        return "#{list1}"
    end
end
# puts bigger_two([1, 2], [3, 4]) # [3, 4]
# puts bigger_two([1, 7], [4, 4]) # [1, 7]


def series_up(n)
    n.size.times do |num|
        n1 = n
        n2 = n - 1
        n3 = n - 2
        n4 = n - 3
        if n == 1
            return n1
        end
        if n == 2
            return n2, n2, n1
        end
        if n == 3
            return n3, n3, n2, n3, n2, n1
        end
        if n == 4
            return n4, n4, n3, n4, n3, n2, n4, n3, n2, n1
        end
    end
end
# # puts series_up(1)
# # puts series_up(2)
# # puts series_up(3)
# puts series_up(4)