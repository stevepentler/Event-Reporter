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
    rows = @data.map { |row| row[attribute.to_sym]}
  end


  def queue_save(file_name = 'event_attendees.csv')

  end

  def find(attribute, criteria)
    @data.find_all { |row| row[attribute.to_sym] == criteria }.join("\n")
  end

  def headers_row
    %w(FIRST-NAME LAST-NAME EMAIL-ADDRESS HOME-PHONE STREET CITY STATE ZIPCODE ).join("\t")
  end

  def create_table
    rows = @data.map do |row| 
      [row[:last_name],
      row[:first_name],
      row[:email_address],
      row[:zipcode],
      row[:city],
      row[:state],
      row[:street],
      row[:homephone],
      ].join("\t")
    end
  end

end 

q = Queue.new('sample_attendees.csv')
# q.create_table
# q.queue_print_by('zipcode')
# q.queue_print_by('street')
q.find('state', 'DC')
