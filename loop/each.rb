numbers = [1, 2, 3]
names = {name: 'arif', age: 21}

numbers.each do
  puts 'each loop'
end

numbers.each do |number|
  puts "each loop, number: #{number}"
end

numbers.each_with_index do |number, index|
  puts "each with index, number: #{number}, index: #{index}"
end

numbers.each { puts 'each oneline' }

numbers.each { |n| puts "each oneline, number: #{n}" }

numbers.each_with_index { |n, i| puts "each oneline, number: #{n}, index: #{i}"}

names.each do |key, value|
  puts "hash each, key: #{key}, value: #{value}"
end

names.each_with_index do |hash, index|
  puts "hash each, key: #{hash[0]}, value: #{hash[1]}, i: #{index}"
end
