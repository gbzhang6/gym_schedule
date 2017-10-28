class GymSchedule::Scraper

  def get_page
    Nokogiri::HTML(open('https://www.newyorksportsclubs.com/classes?club=7th-avenue-at-10th-street+14th-5th-union-square+16th-8th+23rd-8th+23rd-park+36th-madison+38th-broadway+41st-3rd+41st-8th+48th-2nd+48th-6th-rockefeller-center+49th-broadway+51st-lexington+59th-park+62nd-broadway+63rd-west-end+73rd-central-park-west+76th-1st+76th-broadway+80th-broadway+91st-3rd+94th-broadway+115th-5th+125th-street-harlem-usa+145th-frederick-douglass-blvd+217-broadway-city-hall+astor-place+avenue-a+chelsea+fidi-30-broad-street+grand-central+irving-place+mercer-street+murray-hill+third-avenue+varick-street'))
  end

  def scrape_gym_attributes
    self.get_page.css("div.cell.cell-md-left")
  end

  def make_gymclasses
    scrape_gym_attributes.each do |g|
      GymSchedule::Schedule.new_from_top_page(g)
    end
  end
end
