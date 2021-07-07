class Product 

  def parse(file_name) 
    file_data = File.read(file_name).split
    if (file_data)
      return (file_data)
    else
      return('you have nothing here')
    end
  end

end

