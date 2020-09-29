numbers = [1, 2, 3]

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
