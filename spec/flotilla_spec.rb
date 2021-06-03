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

    it 'has attributes' do
      daedalus = Spacecraft.new({name: 'Daedalus', fuel: '400'})
      seventh_flotilla = Flotilla.new({designation: 'Seventh Flotilla'})

      expect(seventh_flotilla.name).to eq("Seventh Flotilla")
      expect(seventh_flotilla.personnel).to eq([])
      expect(seventh_flotilla.ships).to eq([])
    end
  end

  describe 'methods' do
    it '#add_ship can add a ship to ships' do
      daedalus = Spacecraft.new({name: 'Daedalus', fuel: '400'})
      seventh_flotilla = Flotilla.new({designation: 'Seventh Flotilla'})
      seventh_flotilla.add_ship(daedalus)

      expect(seventh_flotilla.ships).to eq([daedalus])
    end
  end
end
