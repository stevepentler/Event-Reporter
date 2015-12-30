require_relative 'file_reader'
require_relative 'queue'
require 'pry'

class ResponseGenerator
  def intialize
  end

  def generate_response(user_input)

  end 

  def load_file(file_name = 'event_attendees.csv')
    @data = FileReader.new.read(file_name)
    # @data.count
    # @data.each do |f|
    #   puts f[:first_name]
    # end
  end 

  def help

  end 

  def help_command
  end 

  def queue_count
  end

  def queue_clear
  end

  def queue_clear
  end

  def queue_print
  end

  def queue_print_by(attribute)
  end

  def queue_save(file_name = event_attendees.csv)
  end

  def find(attribute, criteria)
  end

end 

c = ResponseGenerator.new
c.load_file('sample_attendees.csv')
