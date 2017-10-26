class GymSchedule::Schedule
  attr_accessor :schedule, :name, :address, :class_time, :instructor, :print_info

  def self.all
    #scrape gym website and return the schedule for today based on the data
    @@all ||= scrape_gym_attributes

  end

  def self.scrape_gym_attributes
    print 'test1'
    doc = Nokogiri::HTML(open('https://www.equinox.com/classschedule?&date=2017-10-26&clubs=113,132,105,117,104,129,131,121,103,127,108,109,133,106,115,126,107,135,128,102,136,112,116,122,124,114,111,110'))
    print doc.class
    name = doc.css("div.bigger").text.strip
    print name
    address = doc.css("span.address").text.strip
    print address
    class_time = doc.css("span.big").text.strip
    print class_time
  end



end
