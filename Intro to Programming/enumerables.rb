
months = ["Jan", "Feb", "Mar", "Apr"]

i=0
while i < months.length
    month = months[i]
    puts month

    i += 1
end

months.each { |month| puts month}


months.each do |ele|
    puts ele
    puts "-"
end

months.each_with_index do |ele, idx|
    puts ele
    puts idx
    puts "-"
end

sentence = "hello world"

sentence.each_char do |char|
    puts char
end


sentence.each_char.with_index do |char,idx|
    puts char
    puts idx
    puts "-"
end


arr = ["a", "b", "c"]

arr.each { |ele| puts ele }

[1, 2, 3, 4, 5].each { |num| puts num }

(1..10).each { |num| puts num }
puts ""

(1...10).each { |num| puts num }



def fizzBuzz(max)
    arr = []

    (1...max).each do |num|
        if num % 3 == 0 && num % 5 != 0
        arr << num
        end
        if num % 3 != 0 && num % 5 == 0
        arr << num
        end
    end
    return arr
end

print fizzBuzz(20)
puts


(0...4).each { |num| puts num } 

(0...4).each { puts "hello" }

4.times { puts "hi" }


def to_initials(name)
	parts = name.split(" ")
  initials = ""
  parts.each { |part| initials += part[0] }
  return initials
end

puts to_initials("Kelvin Bridges")      # => "KB"
puts to_initials("Michaela Yamamoto")   # => "MY"
puts to_initials("Mary La Grange")      # => "MLG"


def first_in_array(arr, el1, el2)
  if arr.index(el1) < arr.index(el2)
    return el1
  else
    return el2
  end
end

puts first_in_array(["a", "b", "c", "d"], "d", "b"); # => "b"
puts first_in_array(["cat", "bird" ,"dog", "mouse" ], "dog", "mouse"); # => "dog"


def abbreviate_sentence(sent)
 words = sent.split(" ")
  new_words = []

  words.each do |word|
    if word.length > 4
      new_word = abbreviate_word(word)
      new_words << new_word
    else
      new_words << word
    end
  end

  return new_words.join(" ")
end

def abbreviate_word(word)
  vowels = "aeiou"
  new_word = ""

  word.each_char do |char|
    if !vowels.include?(char)
      new_word += char
    end
  end

  return new_word
end

puts abbreviate_sentence("follow the yellow brick road") # => "fllw the yllw brck road"
puts abbreviate_sentence("what a wonderful life")        # => "what a wndrfl life"


# Hint: use str.upcase and str.downcase
# "abc".upcase # => "ABC"

def format_name(str)
  parts = str.split(" ")
  new_parts = []

  parts.each do |part|
    new_parts << part[0].upcase + part[1..-1].downcase
  end

  return new_parts.join(" ")
end
end

puts format_name("chase WILSON") # => "Chase Wilson"
puts format_name("brian CrAwFoRd scoTT") # => "Brian Crawford Scott"


# Hint: use str.upcase and str.downcase
# "abc".upcase # => "ABC"

def format_name(str)
  parts = str.split(" ")
  new_parts = []

  parts.each do |part|
    new_parts << part[0].upcase + part[1..-1].downcase
  end

  return new_parts.join(" ")
end
end

puts format_name("chase WILSON") # => "Chase Wilson"
puts format_name("brian CrAwFoRd scoTT") # => "Brian Crawford Scott"


# A name is valid is if satisfies all of the following:
# - contains at least a first name and last name, separated by spaces
# - each part of the name should be capitalized
#
# Hint: use str.upcase or str.downcase
# "a".upcase # => "A"

def is_valid_name(str)

  parts = str.split(" ")
  if parts.length < 2
    return false
  end

  parts.each do |part|
    if !is_capitalized(part)
      return false
    end
  end

  return true
end

def is_capitalized(word)
  if word[0] == word[0].upcase && word[1..-1] == word[1..-1].downcase
    return true
  else
    return false
  end
end

puts is_valid_name("Kush Patel")       # => true
puts is_valid_name("Daniel")           # => false
puts is_valid_name("Robert Downey Jr") # => true
puts is_valid_name("ROBERT DOWNEY JR") # => false

# For simplicity, we'll consider an email valid when it satisfies all of the following:
# - contains exactly one @ symbol
# - contains only lowercase alphabetic letters before the @
# - contains exactly one . after the @

def is_valid_email(str)

  parts = str.split("@")

  if parts.length != 2
    return false
  end

  first = parts[0]
  second = parts[1]
  alpha = "abcdefghijklmnopqrstuvwxyz"

  first.each_char do |char|
    if !alpha.include?(char)
      return false
    end
  end

  if second.split('.').length == 2
    return true
  else
    return false
  end
end

puts is_valid_email("abc@xy.z")         # => true
puts is_valid_email("jdoe@gmail.com")   # => true
puts is_valid_email("jdoe@g@mail.com")  # => false
puts is_valid_email("jdoe42@gmail.com") # => false
puts is_valid_email("jdoegmail.com")    # => false
puts is_valid_email("az@email")         # => false

def reverse_words(sent)
  words = sent.split(" ")
  new_words = []
  words.each { |word| new_words << word.reverse }
  new_sent = new_words.join(" ")
  return new_sent
end

puts reverse_words('keep coding') # => 'peek gnidoc'
puts reverse_words('simplicity is prerequisite for reliability') # => 'yticilpmis si etisiuqererp rof ytilibailer'

def rotate_array(arr, num)

end

print rotate_array([ "Matt", "Danny", "Mashu", "Matthias" ], 1) # => [ "Matthias", "Matt", "Danny", "Mashu" ]
puts

print rotate_array([ "a", "b", "c", "d" ], 2) # => [ "c", "d", "a", "b" ]
puts

def rotate_array(arr, num)
  num.times do
    ele = arr.pop
    arr.unshift(ele)
  end

  return arr
end

print rotate_array([ "Matt", "Danny", "Mashu", "Matthias" ], 1) # => [ "Matthias", "Matt", "Danny", "Mashu" ]
puts

print rotate_array([ "a", "b", "c", "d" ], 2) # => [ "c", "d", "a", "b" ]
puts