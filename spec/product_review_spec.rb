require('rspec')
require('product-review.rb')

describe ('product') do 
  it ('creates a new set of product data') do 
    new_data=Product.new('sample-input.txt')
    expect(new_data).not_to(be(nil))
  end

  it('pushes all approve items to an array') do 
    new_data = Product.new('sample-input.txt')
    expect(new_data.sort_approve().length).to(eq(6))
  end

  it('pushes all reject items to a reject array') do 
    new_data = Product.new('sample-input.txt')
    expect(new_data.sort_reject().length).to(eq(3))
  end

  it('removes duplicates from the approve array') do 
    new_data=Product.new('sample-input.txt')
    new_array = new_data.sort_approve()
    expect(new_data.remove_approve_duplicates(new_array).length).to(eq(4))
  end




end