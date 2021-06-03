class Spacecraft
  attr_reader :name,
              :fuel,
              :requirements

  def initialize(spacecraft_info)
    @name = spacecraft_info[:name]
    @fuel = spacecraft_info[:fuel].to_i
    @requirements = []
  end

  def add_requirement(requirement)
    @requirements.push(requirement)
  end
end
