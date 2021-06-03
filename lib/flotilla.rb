class Flotilla
  attr_reader :name,
              :personnel,
              :ships

  def initialize(flotilla_info)
    @name = flotilla_info[:designation]
    @personnel = []
    @ships = []
  end

  def add_ship(ship)
    @ships.push(ship)
  end

  def add_personnel(personnel)
    @personnel.push(personnel)
  end

#This needs to look into personnel array, which needs to
#look into the specialties array and compare specialties
#against the spacecraft's requirements array.
  def recommend_personnel(ship)
    recommended_people = []
    @personnel.each do |personnel|
    personnel.specialties.each do |specialty|
      ship.requirements.include?(specialty)
        recommended_people.push(personnel)
      end
    end
    return recommended_people.uniq
  end
end
