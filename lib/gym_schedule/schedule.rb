class GymSchedule::Schedule
  attr_accessor :schedule, :name, :address, :gymclass_time, :instructor, :print_info

  @@all = []

  def self.new_from_top_page(g)
    self.new(
      g.css("a.bigger").text.strip,
      "https://www.newyorksportsclubs.com#{g.css("a").attribute("href").text}",
      g.css("span.address").text.strip,
      g.css("div.cell.cell-head big").text.strip
    )
  end

  def initialize(name=nil, url=nil, address=nil, gymclass_time=nil)
    @name = name
    @url = url
    @address = address
    @gymclass_time = gymclass_time
    @@all << self
  end

  def self.all
    #scrape gym website and return the schedule for today based on the data
    @@all
  end

  def self.find(num)
    self.all[num-1]
  end

  def moreinfo
    @moreinfo ||= Nokogiri::HTML(open(self.url))
  end

  def instructor
    @instructor ||= moreinfo.xpath("h4 a").text
  end



end
