require './lib/flotilla'
require './lib/spacecraft'
require './lib/person'

RSpec.describe Flotilla do
  describe 'instantiation' do
    it '::new' do
      daedalus = Spacecraft.new({name: 'Daedalus', fuel: '400'})
      seventh_flotilla = Flotilla.new({designation: 'Seventh Flotilla'})

      expect(seventh_flotilla).to be_a(Flotilla)
    end
  end
end
