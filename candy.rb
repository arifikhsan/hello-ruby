puts '==============================='
puts '        EKOJI Challenge        '
puts '==============================='

puts "Algoritma bungkus permen\n\n"

puts 'Masukkan harga satu permen: ' 
price = gets.chomp.to_i # X

puts "\n"

puts '-------- Skema Bonus --------'
puts 'Setiap ... permen: ' 
exchange_threshold = gets.chomp.to_i # Y
puts 'Dapat ditukar dengan ... permen: ' 
exchange_quantity = gets.chomp.to_i # Z

puts 'Masukkan jumlah uang untuk dibelanjakan: ' 
budget = gets.chomp.to_i # W
puts '-----------------------------'

p price.class
p exchange_threshold.class
p exchange_quantity.class
p budget.class

puts 'Total permen yang didapat: ...'
puts 'Sisa bungkus yang disimpan: ...'
