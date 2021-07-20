require('./lib/product-review.rb')

puts('enter the file name you wish to parse:')
file_name=gets.chomp()
new_data=Product.new(file_name)

new_reject_array = new_data.sort_reject()

new_approve_array=new_data.sort_approve()

remove_duplicate_approve=new_data.remove_approve_duplicates(new_approve_array)

remove_duplicate_reject=new_data.remove_reject_duplicates(new_reject_array)

final_approve=new_data.unique_approve(remove_duplicate_approve, remove_duplicate_reject)

new_data.print_results(final_approve, remove_duplicate_reject)