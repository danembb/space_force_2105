class Flotilla
  attr_reader :name,
              :personnel,
              :ships
              
  def initialize(flotilla_info)
    @name = flotilla_info[:designation]
    @personnel = []
    @ships = []
  end
end
