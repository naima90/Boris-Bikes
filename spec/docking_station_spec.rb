require 'docking_station'
describe DockingStation do
    docking_station = DockingStation.new
    bike = Bike.new
    it {expect(DockingStation.new).to respond_to :release_bike} 
    it {expect(DockingStation.new.release_bike.working?).to be true} 
    it {expect(DockingStation.new).to respond_to :dock}
    expect(docking_station.dock(bike)).to eq bike
    expect(docking_station.bike).to eq bike
end

