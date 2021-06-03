require './lib/floatilla'

RSpec.describe Floatilla do
  describe 'instantiation' do
    it '::new' do
      daedalus = Spacecraft.new({name: 'Daedalus', fuel: '400'})
    end
  end
end
