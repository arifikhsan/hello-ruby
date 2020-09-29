1.upto(3) do
  puts 'upto'
end

2.upto(4) do |n|
  puts n
end

1.upto(3) { puts 'upto oneline' }

1.upto(3) { |n| puts "upto oneline, n: #{n}"}
