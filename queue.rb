require_relative 'file_reader'
require 'pry'

class Queue
  

  def initialize(file_name)
    @count = 0
    @data = FileReader.new.read(file_name)
  end

  # def queue_count
  # end

  def queue_clear
    @count = 0 
    @reponse = nil
  end

  def queue_print
    
  end

  def queue_print_by(attribute)

  end

  def queue_save(file_name = 'event_attendees.csv')

  end

  def find(attribute, criteria)

  end

  def headers_row
    %w(FIRST-NAME LAST-NAME EMAIL-ADDRESS HOME-PHONE STREET CITY STATE ZIPCODE ).join("\t")
  end

  def create_table
    rows = @data.map do |row| 
      [row[:first_name],
      row[:last_name],
      row[:email_address],
      row[:homephone],
      row[:street],
      row[:city],
      row[:state],
      row[:zipcode]].join("\t")

    end
    binding.pry
  end

end 

q = Queue.new('sample_attendees.csv')
q.create_table