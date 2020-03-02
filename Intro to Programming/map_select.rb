
arr = ["a", "b", "c", "d"]
new_arr = arr.map { |ele| ele.upcase + "!" }

print new_arr
puts

nums = [1, 2, 3, 4, 5, 6]

evens = nums.select { |ele| ele % 2 == 0 }
print evens
puts


arr = ["apple", "bootCAMP", "caRrot", "DaNce"]

new_arr = arr.map { |word| word[0].upcase + word[1..-1].downcase }

print new_arr
puts

new_arr1 = arr.map do |ele|
    first_char = ele[0].upcase
    rest = ele[1..-1].downcase
    first_char + char
end

print new_arr1
puts

new_arr2 = arr.map.with_index do |ele, idx|
    first_char = ele[0].upcase
    rest = ele[1..-1].downcase
    new_word = first_char + char
    new_word * idx
end

print new_arr1
puts


