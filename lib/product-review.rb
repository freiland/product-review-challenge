class Product 

  def initialize(file_name)
    @file_name=file_name
  end


  # this method moves all items with approve into an array and uses regular expressions to target each item in the text line
  def sort_approve()
    approve=[]
    File.open(@file_name).each do |line|
      if line.match(/approve/)
        item = line.scan(/(?<=\,)(.*?)(?=\- )/)
        approve.push(item)
      end
    end 
    return approve 
  end

  # this method moves all items with reject into an array and uses regular expressions to target the items 
  def sort_reject()
    reject=[]
    File.open(@file_name).each do |line|
      if line.match(/reject/)
      item = line.scan(/(?<=\,)(.*?)(?=\- )/)
      reject.push(item)
    end
  end
  return reject 
  end

  # this method removes duplicates and sorts the approve array
  def remove_approve_duplicates(array)
     return array.flatten.uniq.sort
  end

  #this method removes duplicates and sorts the reject array
  def remove_reject_duplicates(array)
    return array.flatten.uniq.sort
  end

  # subtracts the reject array from the approve array, removing any rejected items from the approve array
  def unique_approve(array_one, array_two)
    return unique_approve = array_one - array_two
  end
  
  def print_results(array_one, array_two)
    print 'APPROVE'
    print "\n"
    array_one.each do |e|
      print e 
      print "\n"
    end
    print 'REJECT'
    print "\n"
    array_two.each do |e|
      print e
      print "\n"
    end
  end
end

