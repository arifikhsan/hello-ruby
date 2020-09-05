def validate
  [@price, @exchange_threshold, @exchange_quantity, @budget].map do |object|
    if object == 0
      abort "Input tidak valid."
    elsif object <= 0
      abort "Angka tidak boleh minus."
    end
  end
end

def how_much_exchange(wrap)
  exchange_count = wrap / @exchange_threshold
  wrap_remain = wrap % @exchange_threshold
  @each_candy_obtained = exchange_count * @exchange_quantity

  @wrapper_left -= wrap # ditukarkan
  @wrapper_left += wrap_remain # sisa bungkus
  @wrapper_left += @each_candy_obtained # dapat permen berapa dari tukaran
  @candy_obtained += @each_candy_obtained

  if @wrapper_left >= @exchange_threshold
    how_much_exchange(@wrapper_left) # rekursi
  else
    return
  end
end

def resolve
  @candy_obtained = 0
  @wrapper_left = 0
  @each_candy_obtained = 0

  @candy_obtained += @budget / @price
  @wrapper_left = @candy_obtained.dup

  initial_candy_wrapper = @wrapper_left

  how_much_exchange(initial_candy_wrapper)
end

def show
  puts '==============================='
  puts '        EKOJI Challenge        '
  puts '==============================='

  puts "Algoritma bungkus permen\n\n"

  puts 'Masukkan harga satu permen: '
  @price = gets.chomp.to_i # X

  puts "\n"

  puts '-------- Skema Bonus --------'
  puts 'Setiap ... permen: '
  @exchange_threshold = gets.chomp.to_i # Y
  puts 'Dapat ditukar dengan ... permen: '
  @exchange_quantity = gets.chomp.to_i # Z
  puts '-----------------------------'

  puts "\n"

  puts 'Masukkan jumlah uang untuk dibelanjakan: '
  @budget = gets.chomp.to_i # W

  puts "\n"

  validate
  resolve

  puts "Total permen yang didapat: #{@candy_obtained}"
  puts "Sisa bungkus yang disimpan: #{@wrapper_left}"
end

show
