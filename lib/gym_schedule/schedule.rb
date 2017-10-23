class GymSchedule::Schedule
  attr_accessor :name, :address, :class_time, :url

  def self.today
    #scrape gym website and return the schedule for today based on the data
    self.scrape_schedule
  end

  def self.scrape_schedule
    #go to the website and find the schedule for today
    schedule = []

    schedule
  end

end
