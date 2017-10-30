#CLI Controller

class GymSchedule::CLI

  def call
    GymSchedule::Scraper.new.make_gymclasses
    puts "Welcome to the New York Sports Club - Manhattan Classes."
    list
    gymclass_time
    goodbye
  end

  def list
    puts "Today's Gym Schedule:"
    GymSchedule::Schedule.all.each.with_index(1) do |schedule, i|
      puts "#{i}. #{schedule.name} - #{schedule.address} - #{schedule.gymclass_time}"
    end

  end

  def gymclass_time
    input = nil
    while input != "exit"
      puts "Enter the number for the class you would like more information on or exit."
      input = gets.strip.to_i
      binding.pry
      if input.to_i > 0
        if num = GymSchedule::Schedule.find(input.to_i)
          print_info(schedule)
        end
        puts "That is not a valid response, please type list or exit."
      elsif list
        list
      end
    end
  end

  def print_info(schedule)
    puts ""
    puts "--------#{schedule.name} - #{schedule.address} - #{schedule.gymclass_time}--------"
    puts "Instructor: #{schedule.instructor}"
    puts "#{schedule.detail}"
  end

  def goodbye
    puts "See you later, come back tomorrow for more gym classes!"
  end

end
