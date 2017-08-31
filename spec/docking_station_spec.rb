require 'DockingStation'

describe Docking_Station do
  it 'responds to release bike' do
    docking_station = Docking_Station.new
    expect(docking_station).to respond_to :release_bike
    end
  end

    describe Docking_Station do
 it { is_expected.to respond_to :release_bike }
  it 'releases working bikes' do
    bike = subject.release_bike
    expect(bike).to be_working
  end
end
