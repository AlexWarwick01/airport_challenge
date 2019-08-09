require 'airports'
describe Airport do
  describe '#land?' do
    it 'knows land? exists' do
      expect(subject).to respond_to(:land?)
    end

    it 'can land planes' do
      plane = Planes.new
      expect(subject.land?(plane)).eql?(plane)
    end
    it 'should raise an error when its too stormy to land' do
      expect{ raise subject.weather }.to raise_error("Too Stormy!")
    end

    it 'should not allow landings if airport is full' do
      20.times{ subject.land? Planes.new}
      expect{ subject.land? Planes.new}.to raise_error("Airport Full!")
    end
end
  describe '#take_off' do
    it 'can make planes take off' do
      plane = Planes.new
      expect(subject.take_off(plane)).eql?(plane)
    end

    it 'can make sure the plane isnt in the airport' do
      plane = Planes.new
      expect(subject.whatplanes?).not_to include(plane)
    end
    it 'should raise an error when its too stormy to take off' do
      expect{ raise subject.weather }.to raise_error("Too Stormy!")
    end

  end

end
