def my_min(list)
    smallest = list.first
    list.each do |ele1|
        list.each do |ele2|
            if smallest > ele2
                smallest = ele2 
            end
        end
    end
    smallest

end

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
 my_min(list)  # =>  -5

def better_min(list)
    list.inject(0) do |small, ele|
        if ele < small
            small = ele
        else
            small
        end
    end
    
end
 better_min(list)  # =>  -5




def largest_contiguous_subsum(array)
    
    total = array.first

    (0...array.length).each do |i1| 
        (i1...array.length).each do |i2|
            if array[i1..i2].sum > total
                total = array[i1..i2].sum
            end
        end
    end 
    total
end


def super_fast_contiguous_subsum(array) 
    largest = array[0] 
    current = array[0] 

    (1...array.length).each do |i| 
        current = 0 if current < 0 
        current += array[i] #
        
        largest = current if current > largest 
    end
    largest
end




list = [5, 3, -7] #=> 8
list2 = [2, 3, -6, 7, -6, 7]
list3 = [-5, -1, -3]

# p largest_contiguous_subsum(list) # => 8
# p largest_contiguous_subsum(list2) # => 8 (from [7, -6, 7])
# p largest_contiguous_subsum(list3) # => -1 (from [-1])

p super_fast_contiguous_subsum(list) # => 8
p super_fast_contiguous_subsum(list2) # => 8 (from [7, -6, 7])
p super_fast_contiguous_subsum(list3) # => -1 (from [-1])


