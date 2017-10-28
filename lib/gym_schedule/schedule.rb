class GymSchedule::Schedule
  attr_accessor :schedule, :name, :address, :gymclass_time, :instructor, :print_info

  @@all = []

  def self.new_from_top_page(g)
    self.new(
      g.css("a.bigger").text.strip,
      g.css("span.address").text.strip,
      g.css("div #cell.cell-head span.big").text.strip
    )
  end

  def initialize(name=nil, address=nil, gymclass_time=nil)
    @name = name
    @address = address
    @gymclass_time = gymclass_time
    @@all << self
  end

  def self.all
    #scrape gym website and return the schedule for today based on the data
    @@all
  end



end
