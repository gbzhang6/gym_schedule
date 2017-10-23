class GymSchedule::Schedule
  attr_accessor :name, :address, :class_time, :url

  def self.today
    #scrape gym website and return the schedule for today based on the data
    self.scrape_schedule
  end

  def self.scrape_schedule
    #go to the website and find the schedule for today
    schedule = []

    schedule << self.scrape_equinox

    schedule
  end

  def self.scrape_equinox
    doc = Nokogiri::HTML(open("https://www.equinox.com/classschedule?isBookingRequired=false&clubs=113,132,105,117,104,129,131,121,103,127,108,109,133,106,115,126,107,135,128,102,136,112,116,122,124,114,111,110"))
    binding.pry
  end

end
