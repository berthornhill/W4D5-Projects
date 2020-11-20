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
p my_min(list)  # =>  -5

def better_min(list)
    list.inject(0) do |small, ele|
        if ele < small
            small = ele
        else
            small
        end
    end
    
end
p better_min(list)  # =>  -5





