# Data structure - Hashes
# 'key => value' pairs

my_hash = { 
    "name" => "App Academy",
    "color" => "red",
    "age" => 5,
    "isAwesome" => true,
    42 => "hello"
}

puts my_hash
puts my_hash["age"]
my_hash["color"] = "pink"
my_hash["age"] += 1
puts my_hash
puts my_hash[42]


dog = {
    "name" => "Fido",
    "color" => "black",
    "age" => 3,
    "isHungry" => true,
    "enemies" => ["squirrel"]
}

dog["name"] = "Spot"
dog["age"] += 10

dog["location"] = "NY"
 
puts dog
puts dog.length

dog["enemies"] << "mailman"
puts
puts dog

puts dog.has_key?("color") 
puts dog.has_value?(3)
print dog.keys
puts
print dog.values


pizza = {
    "style" => "New York",
    "slices" => 8,
    "diameter" => "15 inches",
    "toppings" => ["mushrooms", "green peppers"],
    "is_tasty"  => true
}

puts pizza

pizza.each do |k, v|
    puts k
    puts v
    puts "-----"
end 

pizza.each_key do |k|
    puts k
end

pizza.each_value do |val|
    puts val
end


my_hash = {
    "a" => 28
}

puts my_hash["b"] == nil

my_hash1 = Hash.new("hello")

puts my_hash1["a"]

puts my_hash1

my_hash1["a"] = "Goodbye"

puts my_hash1

counter = Hash.new(0)

str = "bootcamp prep"

#str.each_char { |char| counter[char] += 1 }
#puts counter

str.each_char do |char|
    puts char
     counter[char] += 1 
     puts counter
end
puts counter



my_hash3 = {"a" => 42, "b" => 10}

key = "b"

puts my_hash3[key]


str1 = "mississippi river"

count = Hash.new(0)

str1.each_char { |char| count[char] += 1 }

print count
puts
print count.sort_by { |k, v| v}
puts
sorted = count.sort_by { |k, v| v}
print sorted[-1]
puts
print sorted[-1][0]
puts