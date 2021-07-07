require('./lib/product-review.rb')

puts('enter the file name you wish to parse:')
file_name=gets.chomp()
new_data=Product.new(file_name)
new_data.parse