(1..3).each do |num1|
    puts num1

    (1..5).each do |num2|
        puts "     " + num2.to_s
    end
end

(1..3).each do |num1|
    (1..5).each do |num2|
        puts num1.to_s + "." + num2.to_s
    end
end


arr = ["a", "b", "c", "d"]

arr.each do |ele1|
    arr.each do |ele2|
        puts ele1 + ele2
    end
end


arr = ["a", "b", "c", "d"]

arr.each_with_index do |ele1, idx1|
    arr.each_with_index  do |ele2, idx2|
        if idx2 > idx1 
            puts ele1 + ele2
            puts idx1.to_s + " " + idx2.to_s
            puts "-------"
        end
    end
end


arr =  [
    ["a", "b", "c"],
    ["d", "e"],
    ["f", "g", "h"],
]

print arr
puts
print arr[0]
puts

subArr = arr[1]
print subArr[1]
puts

print arr[1][1]
puts


arr.each do |subArr|
    print subArr
    puts
    subArr.each do |ele|
        puts ele
    end
end

def combinations(arr)
  pairs = []

  arr.each_with_index do |ele1, idx1|
    arr.each_with_index do |ele2, idx2|
      if idx2 > idx1
        pairs << [ ele1, ele2 ]
      end
    end
  end

  return pairs
end

print combinations(["a", "b", "c"]); # => [ [ "a", "b" ], [ "a", "c" ], [ "b", "c" ] ]
puts

print combinations([0, 1, 2, 3]); # => [ [ 0, 1 ], [ 0, 2 ], [ 0, 3 ], [ 1, 2 ], [ 1, 3 ], [ 2, 3 ] ]
puts


def opposite_count(nums)
  count = 0

  nums.each_with_index do |num1, idx1|
    nums.each_with_index do |num2, idx2|
      if num1 + num2 == 0 && idx2 > idx1
        count += 1
      end
    end
  end

  return count
end

puts opposite_count([ 2, 5, 11, -5, -2, 7 ]) # => 2
puts opposite_count([ 21, -23, 24 -12, 23 ]) # => 1


def two_d_sum(arr)
  total = 0

  arr.each do |sub_array|
    sub_array.each do |num|
      total += num
    end
  end

  return total
  
end

array_1 = [
  [4, 5],
  [1, 3, 7, 1]
]
puts two_d_sum(array_1)    # => 21

array_2 = [
  [3, 3],
  [2],
  [2, 5]
]
puts two_d_sum(array_2)    # => 15

def two_d_translate(arr)
  new_arr = []

  arr.each do |subArray|
    ele = subArray[0]
    num = subArray[1]

    num.times { new_arr << ele }
  end

  return new_arr
end

arr_1 = [
  ['boot', 3],
  ['camp', 2],
  ['program', 0]
]

print two_d_translate(arr_1) # => [ 'boot', 'boot', 'boot', 'camp', 'camp' ]
puts

arr_2 = [
  ['red', 1],
  ['blue', 4]
]

print two_d_translate(arr_2) # => [ 'red', 'blue', 'blue', 'blue', 'blue' ]
puts


def array_translate(array)
  str = ""

  i = 0
  while i < array.length
    ele = array[i]
    num = array[i + 1]
    num.times { str += ele }

    i += 2
  end

  return str
end

print array_translate(["Cat", 2, "Dog", 3, "Mouse", 1]); # => "CatCatDogDogDogMouse"
puts

print array_translate(["red", 3, "blue", 1]); # => "redredredblue"
puts

def pig_latin_word(word)
  vowels = "aeiou"

  if vowels.include?(word[0])
     return word + "yay"
  end

  word.each_char.with_index do |char, i|
    if vowels.include?(char)
      return word[i..-1] + word[0...i] + "ay"
    end
  end
end

puts pig_latin_word("apple")   # => "appleyay"
puts pig_latin_word("eat")     # => "eatyay"
puts pig_latin_word("banana")  # => "ananabay"
puts pig_latin_word("trash")   # => "ashtray"