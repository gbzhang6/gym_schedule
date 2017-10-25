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
    @schedule.all.each.with_index(1) do |schedule, i|
      puts "#{i}. #{schedule.name} - #{schedule.address} - #{schedule.class_time}"
    end
  end

  def class_time
    input = nil
    while input != "exit"
      puts "Enter the number for the class you would like more information on."
      puts ""
      puts "Enter exit to end the program."
      input = gets.strip.downcase
      if input.to_i > 0
        if num = GymSchedule::Schedule.find(input.to_i)
          print_info(num)
        end
        puts "That is not a valid response, please type list or exit."
      elsif list
        list
      end
    end

  def goodbye
    puts "See you later, come back tomorrow for more gym classes!"
  end


end
