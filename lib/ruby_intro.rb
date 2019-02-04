# When done, submit this entire file to the autograder.

# Part 1

def sum arr
    val = 0
    for i in arr
        val+=i
    end
    return val
end

def max_2_sum arr
    if arr.length == 0
        return 0
    elsif arr.length == 1
        return arr[0]
    else
        x = arr[0]
        y = arr[1]
        if x<y 
            x,y = y,x
        end
        ind = 2
        while ind < arr.length
            i = arr[ind]
            if i >= x
                y = x
                x = i
            elsif i > y
                y = i
            end
            ind+=1
        end
        return x+y
    end
end

def sum_to_n? arr, n
    dict ={}
    for val in arr
        if dict[val]
            dict[val]+=1
        else
            dict[val]=1
        end
    end

    for val in arr
        f = n-val
        if f==val
            if dict[f]>1
                return true
            end
        else
            if dict[f]
                return true
            end
        end
    end
    false
end

# Part 2

def hello(name)
  return "Hello, "+name
end

def starts_with_consonant? s
    /^[b-df-hj-np-tv-z]/i.match(s) != nil
end

def binary_multiple_of_4? s
    if s=="0"
       return true 
    end
    /^[10]*00$/.match(s) != nil
end

# Part 3

class BookInStock
    
    attr_accessor :isbn
    attr_accessor :price

    def initialize(isbn,price)
        raise ArgumentError,
            "Illegal argument" if isbn.empty? or price<=0
        @isbn = isbn
        @price = price
    end

    def price_as_string
        sprintf("$%2.2f",@price)
    end
end
