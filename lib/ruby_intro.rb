# Part 1

def sum arr
  sum = 0
  arr.each { |x| sum += x }
  sum
end

def max_2_sum arr
  sum arr.sort.reverse.take(2)
end

def sum_to_n? arr, n
  arr.combination(2).to_a.each do |x,y|
    if (x+y == n)
      return true
    end
  end
  
  return false
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  return s.downcase.match(/^(?=[^aeiou])(?=[a-z])/)
end

def binary_multiple_of_4? s
  if s.length == 1
    return s == '0'
  else
    return s.match(/^[10]*00$/)
  end
end

# Part 3

class BookInStock
  attr_accessor :isbn
  attr_accessor :price
  def initialize(isbn, price)
    if (isbn.length == 0 || price <= 0)
      raise ArgumentError.new("")
    end
    @isbn = isbn
    @price = price
  end
  def price_as_string
    return "$%0.2f" % @price
  end
end