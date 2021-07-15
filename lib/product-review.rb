class Product 

  def initialize(file_name)
    @file_name=file_name
  end

  def parse() 
    File.open(@file_name).each do |line|
      puts line 
    end
  end 

  def sort_items()
    approve=[]
    reject=[]
    File.open(@file_name).each do |line|
      if line.match(/reject/)
        item = line.scan(/(?<=\,)(.*?)(?=\- )/)
        reject.push(item)
      else 
        item = line.scan(/(?<=\,)(.*?)(?=\- )/)
        approve.push(item)

      end
    end 
      flat_approve = approve.flatten.uniq.sort
      flat_reject = reject.flatten.uniq.sort
      print 'REJECT'
      print "\n"
      flat_reject.each do |e|
        print e
        print "\n"
        
      end
      
      new_array=flat_approve-flat_reject
      print 'APPROVE'
      print "\n"
      new_array.each do |e|
        print e 
        print "\n"
      end 
  end

end

