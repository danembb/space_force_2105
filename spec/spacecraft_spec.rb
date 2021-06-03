require './lib/spacecraft'

RSpec.describe Spacecraft do
  describe 'instantiation' do
    it '::new' do
      daedalus = Spacecraft.new({name: 'Daedalus', fuel: '400'})

      expect(daedalus).to be_a(Spacecraft)
    end
  end
end
