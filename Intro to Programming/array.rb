
letters = ["a", "b", "c"]

print letters

puts letters


puts letters.length

puts letters[1]

names = ["Maurice", "Adam", "Monty"]

print names

print "\n"

names << "Brain"

names << "Abby"

names[1] = "Mike" 

print names


foods = ['pizza', 'sushi', 'burgers', 'fries', 'ramen']

i = 0
while i < foods.length
    puts i

    i += 1
end

def print_arr(arr)

    i = 0
    while i < arr.length
        puts arr[i]

        i += 1
    end
end

print_arr(foods)


def doubler(numbers)
  temp = []
  i = 0
  while i< numbers.length
  temp  << numbers[i] * 2
	i +=1
  end
  return temp
end

print doubler([1, 2, 3, 4]) # => [2, 4, 6, 8]
puts
print doubler([7, 1, 8])    # => [14, 2, 16]


def yell(words)

yelled = []

  i = 0
  while i < words.length
    word = words[i]
    yelled_word = word + "!"
    yelled << yelled_word

    i += 1
  end

  return yelled
end

print yell(["hello", "world"]) # => ["hello!", "world!"]
puts
print yell(["code", "is", "cool"]) # => ["code!", "is!", "cool!"]

def element_times_index(numbers)
num = []

  i = 0
  while i < numbers.length
    num << numbers[i] * i 

    i += 1
  end

  return num
end


print element_times_index([4, 7, 6, 5])       # => [0, 7, 12, 15]
puts
print element_times_index([1, 1, 1, 1, 1, 1]) # => [0, 1, 2, 3, 4, 5]


def even_nums(max)

  newarr = []
  	i = 0
  	while i <= max
	if i % 2 ==0
      newarr << i
    end
      
    i += 1
    end
  return newarr
end

print even_nums(10) # => [0, 2, 4, 6, 8, 10]
puts
print even_nums(5)  # => [0, 2, 4]


def range(min, max)
 nums = []

  i = min
  while i <= max
    nums << i

    i += 1
  end

  return nums
end

print range(2, 7)   # => [2, 3, 4, 5, 6, 7]
puts
print range(13, 20) # => [13, 14, 15, 16, 17, 18, 19, 20]


def odd_range(min, max)
 nums = []

  i = min
  while i <= max
    if i % 2 != 0
      nums << i
    end
    i += 1
  end

  return nums
end

print odd_range(11, 18) # => [11, 13, 15, 17]
puts
print odd_range(3, 7)   # => [3, 5, 7]


def reverse_range(min, max)
 nums = []

  i = max -1
  while i >= min
    nums << i

    i -= 1
  end

  return nums
end

print reverse_range(10, 17) # => [16, 15, 14, 13, 12, 11]
puts
print reverse_range(1, 7)   # => [6, 5, 4, 3, 2]

def first_half(array)
 nums = []
	
  i = 0
  while i < (array.length)/2.0
    nums << array[i]

    i += 1
  end

  return nums
end

print first_half(["Brian", "Abby", "David", "Ommi"]) # => ["Brian", "Abby"]
puts
print first_half(["a", "b", "c", "d", "e"])          # => ["a", "b", "c"]

def factors_of(num)
factors = []

  i = 1
  while i <= num
    if num % i == 0
      factors << i
    end

    i += 1
  end

  return factors
end

print factors_of(3)   # => [1, 3]
puts
print factors_of(4)   # => [1, 2, 4]
puts
print factors_of(8)   # => [1, 2, 4, 8]
puts
print factors_of(9)   # => [1, 3, 9]
puts
print factors_of(16)  # => [1, 2, 4, 8, 16]


def select_odds(numbers)
factors = []

  i = 0
  while i < numbers.length
    if numbers[i] % 2 != 0
      factors << numbers[i]
    end

    i += 1
  end

  return factors
end

print select_odds([13, 4, 3, 7, 6, 11]) # => [13, 3, 7, 11]
puts
print select_odds([2, 4, 6])            # => []

def select_long_words(words)
longwords = []

  i = 0
  while i < words.length
    if words[i].length > 4
      longwords << words[i]
    end

    i += 1
  end

  return longwords
end

print select_long_words(["what", "are", "we", "eating", "for", "dinner"]) # => ["eating", "dinner"]
puts
print select_long_words(["keep", "coding"])                               # => ["coding"]

def sum_elements(arr1, arr2)
sumarr = []

  i = 0
  while i < arr1.length
    sumarr << arr1[i] + arr2[i]

    i += 1
  end

  return sumarr
end

print sum_elements([7, 4, 4], [3, 2, 11])                            # => [10, 6, 15]
puts
print sum_elements(["cat", "pizza", "boot"], ["dog", "pie", "camp"]) # => ["catdog", "pizzapie", "bootcamp"]

def fizz_buzz(max)
 nums = []

  i = 0
  while (i < max)
    if (i % 4 == 0 || i % 6 == 0) && !(i % 4 == 0 && i % 6 == 0)
      nums << i
    end

    i += 1
  end

  return nums
end

print fizz_buzz(20) # => [4, 6, 8, 16, 18]
puts
print fizz_buzz(15) # => [4, 6, 8]