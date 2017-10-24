#CLI Controller

class GymSchedule::CLI

  def call
    puts "Welcome to the New York Sports Club - Manhattan Classes."
    list
    class_time
    goodbye
  end

  def list
    puts "Today's Gym Schedule:"
    @schedule = GymSchedule::Schedule.today
    @schedule.each.with_index(1) do |schedule, i|
      puts "#{i}. #{schedule.name} - #{schedule.address} - #{schedule.class_time}"
    end
    puts "Type the number of the class you want more info on or type 'exit'."
  end

  def class_time
    input = nil
    while input != "exit"
      input = gets.strip.downcase

      if input.to_i > 0
        today_schedule = @schedule[input.to_i-1]
        puts "#{i}. #{today_schedule.name} - #{today_schedule.address} - #{today_schedule.class_time}"
      elsif input == "all"
        list
      else
        puts "That is not a valid response, please type 'all' or 'exit'."
      end

    end
  end

  def goodbye
    puts "See you later, come back tomorrow for more gym classes!"
  end


end
