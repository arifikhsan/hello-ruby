3.times do
  puts '3 times'
end

3.times do |i|
  puts "3 times, index: #{i}"
end

3.times { puts '3 times one line'}

3.times { |i| puts "3 times one line, index: #{i}"}
