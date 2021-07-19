require('rspec')
require('product-review.rb')

describe ('product') do 
  it ('creates a new set of product data') do 
    new_data=Product.new('sample-input.txt')
    expect(new_data).not_to(be(nil))
  end

  # it('pushes all approve items to an array') do 

    
  #   new_data = Product.new(sample-input.txt)
  #   expect(new_data.sort_approve().length.to_eq(6))
  # end

end