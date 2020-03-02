# Methods


def sayMessage
    puts "Hey Man!"
    puts "What's for lunch?"
end

puts "before the method call"
sayMessage
puts "after the method call"

def say_hello(person1, person2)
    puts "Hello " + person1 + " and " + person2
end

say_hello("Mike", "Oscar")


def calc_average(num1, num2)
    sum = num1 + num2
    avg = sum / 2.0
    return avg
end

result = calc_average(5, 10)
puts result + 1


def average_of_three(num1, num2, num3)
	return (num1 + num2 + num3) / 3.0
end

puts average_of_three(3, 7, 8)   # => 6.0
puts average_of_three(2, 5, 17)  # => 8.0
puts average_of_three(2, 8, 1)   # => 3.666666


def goodbye(name)
	return "Bye " + name + "."
end

puts goodbye("Daniel")   # => "Bye Daniel."
puts goodbye("Mark")     # => "Bye Mark."
puts goodbye("Beyonce")  # => "Bye Beyonce."

