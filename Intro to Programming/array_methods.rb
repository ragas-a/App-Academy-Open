
arr = ["vanessa", "candace", "dave"]
print arr
puts

arr << "jia"
arr.push("matt", "christy")
print arr
puts


print arr.pop()
puts
print arr
puts

print arr.unshift("tom")
puts
print arr
puts

print arr.shift()
puts
print arr
puts


arr1 = ["SF", "NY", "LA"]
puts arr1.index("NY")
puts arr1.index("NJ")

puts arr1.include?("DC")
puts arr1.include?("SF")


str = "hello"
puts str.include?("ello")


arr = [1, 2, 3, 4]

print arr
puts
print arr.reverse
puts
print arr
puts
arr.reverse!
print arr
puts



str = "hello"

puts str.reverse



arr = ["a", "b", "c", "d", "e"]
print arr[1..3]
puts
print arr[1...3]
puts

str = "bootcamp"
print str[1..3]
puts
print str[1...3]
puts
print str [3..-2]
puts



str = "follow the yellow brick road"

print str.split(" ")
words = str.split(" ")
print words

puts
print str

puts words.join(" ")

print str.split("l").join("Z")