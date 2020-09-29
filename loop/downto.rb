3.downto 1 do
  puts 'downto'
end

3.downto 1 do |n|
  puts "downto, n: #{n}"
end

3.downto(1) { puts 'downto oneline' }

3.downto(-3) { |n| puts "downto oneline, n: #{n} "}
