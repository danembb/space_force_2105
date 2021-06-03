require './lib/spacecraft'

RSpec.describe Spacecraft do
  describe 'instantiation' do
    it '::new' do
      daedalus = Spacecraft.new({name: 'Daedalus', fuel: '400'})

      expect(daedalus).to be_a(Spacecraft)
    end

    it 'has attributes' do
      daedalus = Spacecraft.new({name: 'Daedalus', fuel: '400'})

      expect(daedalus.name).to eq('Daedalus')
      expect(daedalus.fuel).to eq(400)
      expect(daedalus.requirements).to eq([])
    end
  end

  describe 'methods' do
    it '#add_requirement adds a requirement' do
      daedalus = Spacecraft.new({name: 'Daedalus', fuel: '400'})
      daedalus.add_requirement({astrophysics: 6})
      daedalus.add_requirement({quantum_mechanics: 3})
      
      expect(daedalus.requirements).to eq([{astrophysics: 6}, {quantum_mechanics: 3}])
    end
  end
end
