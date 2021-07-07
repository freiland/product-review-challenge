require('rspec')
require('product-review.rb')
require('sample-input.txt')

describe ('product') do 

  it('returns true if the file data has contents') do 
    new_file = Product.new()
    expect(new_file.parse(sample-input.txt)).to_eq('you have nothing here')
  end

end