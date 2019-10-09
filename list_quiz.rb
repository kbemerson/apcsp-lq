def three_even(list)                # I redid my list.size to make it a little more specific. Before it was only made to return 
    count = 0                       # if there were 3 evens even if they weren't next to each other. 
    (list.size).times do |num|
        if list[num] % 2 == 0
            count += 1
            if list[num % 2] == list[(num + 1) % 2]
                if count == 3
                    return "3 Evens"
                end
            end
        end
    end
    return "Not 3 Evens"
end
puts three_even([2, 1, 3, 5])   # Not 3 Evens
puts three_even([2, 4, 12, 5])  # 3 Evens
puts three_even([2, 1, 4, 6])   # Not 3 Evens
puts three_even([1, 4, 6, 4])   # 3 Evens
puts three_even([1])            # Not 3 Evens


def bigger_two(list1, list2)
    list1.size.times do |num|
        num1 = list1[num] + list1[num + 1]
    end
    list2.size.times do |num|
        num2 = list2[num] + list2[num + 1]
    end
    if num1 > num2
        return list1
    else num2 > num1
        return list2
    end
    if num1 = num2
        return list1
    end
end
puts bigger_two([1, 2], [3, 4]) # [3, 4]
puts bigger_two([1, 7], [4, 4]) # [1, 7]


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