#CLI Controller

class GymSchedule::CLI

  def call
    list_classes
    class_time
    goodbye
  end

  def list_classes
    puts "Today's Gym Schedule:"
    @schedule = GymSchedule::Schedule.today
    @schedule.each.with_index(1) do |gymclass, i|
      puts "#{i}. #{gymclass.name} - #{gymclass.address} - #{gymclass.class_time}"
    end
  end

  def class_time
    input = nil
    while input != "exit"
      puts "Type the number of the class you want more info on or type 'all' to see full list or type 'exit'."
      input = gets.strip.downcase

      if input.to_i > 0
        puts @schedule[input.to_i-1]
      elsif input == "all"
        list_classes
      else
        puts "That is not a valid response, please type 'all' or 'exit'."
      end

    end
  end

  def goodbye
    puts "See you later, come back tomorrow for more gym classes!"
  end


end
