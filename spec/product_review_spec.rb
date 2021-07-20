require('rspec')
require('product-review.rb')

describe ('product') do 
  new_data=Product.new('sample-input.txt')
  it ('creates a new set of product data') do 
    expect(new_data).not_to(be(nil))
  end

  it('pushes all approve items to an array') do 
    expect(new_data.sort_approve().length).to(eq(6))
  end

  it('pushes all reject items to a reject array') do 
    expect(new_data.sort_reject().length).to(eq(3))
  end

  it('removes duplicates from the approve array') do 
    new_approve_array = new_data.sort_approve()
    expect(new_data.remove_approve_duplicates(new_approve_array).length).to(eq(4))
  end

  it('removes duplicates from the reject array') do 
    new_reject_array = new_data.sort_reject()
    expect(new_data.remove_reject_duplicates(new_reject_array).length).to(eq(2))
  end

  it('removes items that have been rejected from the approve array') do 
    new_reject_array = new_data.sort_reject()
    new_approve_array=new_data.sort_approve()
    remove_duplicate_approve=new_data.remove_approve_duplicates(new_approve_array)
    remove_duplicate_reject=new_data.remove_reject_duplicates(new_reject_array)
    expect(new_data.unique_approve(remove_duplicate_approve, remove_duplicate_reject)).to(eq([' holographic t-shirt ', ' keychain ']))
  end
end