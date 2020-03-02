

def repeatHello()
    counter = 1
    while counter <= 5 
        puts "Hello"
        counter += 1
    end
end

repeatHello()


def printNums
    i = 1
    while i <= 5
        puts i
        i += 1
    end
end

printNums()

def printNums1(min, max, step)
    i = min
    while i <= max
        puts i
        i += step
    end
end

puts "----"

printNums1(1, 20, 2)

puts "----"

i = 1
while i <= 10
    puts i
    if i == 5
        break
    end
    puts i
    i += 1
end

puts "loop ends"


puts "----"

i = 1
while i <= 10
    puts i
    if i == 5
        i += 1
        next
    end
    puts i
    i += 1
end

puts "loop ends"

def count_e(word)
  count = 0

  i = 0
  while i < word.length
    char = word[i]

    if char == "e"
      count += 1
    end

    i += 1
  end

  return count

end

puts count_e("movie") # => 1
puts count_e("excellent") # => 3


def count_a(word)
	count = 0

  i = 0
  while i < word.length
    char = word[i]

    if char == "a" || char == "A"
      count += 1
    end

    i += 1
  end

  return count

end

puts count_a("application")  # => 2
puts count_a("bike")         # => 0
puts count_a("Arthur")       # => 1
puts count_a("Aardvark")     # => 3

def count_vowels(word)
  num_vowels = 0

  i = 0
  while i < word.length
    char = word[i]

    if char == "a" || char == "e" || char == "i" || char == "o" || char == "u"
      num_vowels += 1
    end

    i += 1
  end

  return num_vowels
end

puts count_vowels("bootcamp")  # => 3
puts count_vowels("apple")     # => 2
puts count_vowels("pizza")     # => 2


def sum_nums(max)
  sum = 0

  i = 1
  while i <= max
    sum += i

    i += 1
  end

  return sum
end

puts sum_nums(4) # => 10, because 1 + 2 + 3 + 4 = 10
puts sum_nums(5) # => 15

def factorial(num)
  product = 1

  i = 2
  while i <= num
    product *= i

    i += 1
  end

  return product
end

puts factorial(3) # => 6, because 1 * 2 * 3 = 6
puts factorial(5) # => 120, because 1 * 2 * 3 * 4 * 5 = 120


def reverse(word)
  reversed = ""

  i = 0
  while i < word.length
    char = word[i]
    reversed = char + reversed

    i += 1
  end

  return reversed
end

puts reverse("cat")          # => "tac"
puts reverse("programming")  # => "gnimmargorp"
puts reverse("bootcamp")     # => "pmactoob"


def is_palindrome(word)
  reversed = ""

  i = 0
  while i < word.length
    char = word[i]
    reversed = char + reversed

    i += 1
  end
	
  if word == reversed
    return true
  else 
    return false
  end
end

