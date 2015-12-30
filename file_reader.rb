require 'csv'

class FileReader 
  def read(file_name)
    CSV.readlines(file_name, headers: true, header_converters: :symbol)
  end
end 