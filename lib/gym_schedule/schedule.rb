class GymSchedule::Schedule
  attr_accessor :schedule, :name, :address, :gymclass_time, :instructor, :print_info

  def self.all
    #scrape gym website and return the schedule for today based on the data
    @@all = scrape_gym_attributes

  end

  def self.scrape_gym_attributes
    doc = Nokogiri::HTML(open('https://www.newyorksportsclubs.com/classes?club=7th-avenue-at-10th-street+14th-5th-union-square+16th-8th+23rd-8th+23rd-park+36th-madison+38th-broadway+41st-3rd+41st-8th+48th-2nd+48th-6th-rockefeller-center+49th-broadway+51st-lexington+59th-park+62nd-broadway+63rd-west-end+73rd-central-park-west+76th-1st+76th-broadway+80th-broadway+91st-3rd+94th-broadway+115th-5th+125th-street-harlem-usa+145th-frederick-douglass-blvd+217-broadway-city-hall+astor-place+avenue-a+chelsea+fidi-30-broad-street+grand-central+irving-place+mercer-street+murray-hill+third-avenue+varick-street'))
    name = doc.css("div.class-info p.padding icon-time span").text.strip
    # address = doc.css("span.address").text.strip
    # gymclass_time = doc.css("span.big").text.strip
  end
  binding.pry

end
