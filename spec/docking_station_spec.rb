require 'docking_station'
require 'bike'
describe DockingStation do
    docking_station = DockingStation.new
    bike = Bike.new
    it {expect(docking_station).to respond_to :release_bike} 
    it {expect(docking_station).to respond_to :dock}
    it {expect {subject.release_bike}.to raise_error 'No bikes available'}
    it {expect(docking_station.dock(bike)).to eq bike}
    it {expect(docking_station.bike).to eq bike}
end


