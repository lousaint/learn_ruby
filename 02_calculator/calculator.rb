def add a, b
    a + b
end

def subtract a, b
    a - b
end

def sum array
    array.sum
end

def multiply *args
    product = 1
    args.each do |x|
        product = product * x
    end
    product
end

def power a, b
    a ** b
end

def factorial n
    if (n == 0)
        1
    elsif n > 0
        n * factorial(n - 1)
    else
        "Error"
    end
end