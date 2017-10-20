#CLI Controller

class GymSchedule::CLI

  def call
    list_classes
    class_time
    goodbye
  end

  def list_classes
    puts "Today's Gym Schedule:"
    puts <<-DOC.gsub /^\s*/, ''
    1. UXF - 41st & 3rd - 6:30 AM - 7:30 AM
    2. Advanced Barre - 41st & 3rd - 6:30 AM - 7:30 AM
    DOC
  end

  def class_time
    input = nil
    while input != "exit"
      puts "Type the number of the class you want more info on or type 'all' to see full list or type 'exit':"
      input = gets.strip.downcase
      case input
      when "all"
        list_classes
      when "1"
        puts "more info on class 1"
      when "2"
        puts "more info on class 2"
      when "3"
        puts "more info on class 3"
      end
    end
  end

  def goodbye
    puts "See you later, come back tomorrow for more gym classes!"
  end


end
