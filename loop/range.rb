(1..3).each do
  puts 'range each 1 to 3'
end

(1..3).each do |i|
  puts "range each, index: #{i}"
end

(1..3).map do
  puts 'range map 1 to 3'
end

(1..3).map do |i|
  puts "range map, index: #{i}"
end

(1..3).each { puts 'range each oneline' }

(1..3).each { |i| puts "range each oneline, i: #{i}" }

(1..3).map { puts 'range map oneline' }

(1..3).map { |i| puts "range map oneline, i: #{i}" }
