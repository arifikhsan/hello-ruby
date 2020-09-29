numbers = [4, 5, 6]

numbers.map do
  puts 'map'
end

numbers.map do |number|
  puts "map, number: #{number}"
end

numbers.map.with_index do |n, i|
  puts "map with index, number: #{n}, i: #{i}"
end

numbers.map { puts 'map oneline' }

numbers.map { |n| puts "map oneline, n: #{n}" }

numbers.map.with_index { |n, i| puts "map oneline, n: #{n}, i: #{i}"}
