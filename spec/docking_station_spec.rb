require 'DockingStation'

describe Docking_Station do
it 'should release bike' do
  docking_station = Docking_Station.new
  expect(docking_station).to respond_to :release_bike
  end
end

describe Bike do
  it 'works' do
    bike = Bike.new
    expect(bike).to respond_to :working?
  end
end
