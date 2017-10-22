class GymSchedule::Schedule
  attr_accessor :name, :address, :class_time, :url

  def self.today
    puts <<-DOC.gsub /^\s*/, ''
    1. UXF - 41st & 3rd - 6:30 AM - 7:30 AM
    2. Advanced Barre - 41st & 3rd - 6:30 AM - 7:30 AM
    DOC

    gymclass_1 = self.new
    gymclass_1.name = "UXF"
    gymclass_1.address = "41st & 3rd"
    gymclass_1.class_time = "6:30 AM - 7:30 AM"
    gymclass_1.url = "https://www.equinox.com/groupfitness/6495148"

    gymclass_2 = self.new
    gymclass_2.name = "Advanced Barre"
    gymclass_2.address = "41st & 3rd"
    gymclass_2.class_time = "6:30 AM - 7:30 AM"
    gymclass_2.url = "https://www.equinox.com/groupfitness/6443917"

    [gymclass_1,gymclass_2]
  end

end
