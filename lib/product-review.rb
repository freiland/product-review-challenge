class Product 

  def initialize(file_name)
    @file_name=file_name
  end

  def parse() 
    File.open(@file_name).each do |line|
      puts line 
    end
  end 

  def sort()
    
  end
end

