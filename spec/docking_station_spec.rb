require 'DockingStation'

describe Docking_Station do
it 'should release bike' do
  docking_station = Docking_Station.new
  expect(docking_station).to respond_to :release_bike
  end
end
