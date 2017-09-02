require 'DockingStation'

describe Docking_Station do

  it 'has a default capacity' do
    expect(subject.capacity).to eq Docking_Station::DEFAULT_CAPACITY
  end

  describe 'initialize' do
    it 'has variable capacity' do
      docking_station = Docking_Station.new(21)
      21.times { docking_station.dock Bike.new, "broken"}
      expect{ docking_station.dock Bike.new, "broken" }.to raise_error 'Dock full'
    end
  end

  it {is_expected.to respond_to(:bikes)}
  it { is_expected.to respond_to :release_bike }
  it {is_expected.to respond_to(:dock).with(2).argument}

  it "docks bikes" do
    bike = Bike.new
    expect(subject.dock bike, "broken").to eq "Broken"
  end

  describe "#dock(bike)" do
    it "bike already docked error" do

       Docking_Station::DEFAULT_CAPACITY.times{subject.dock Bike.new, "broken"}
      expect{subject.dock Bike.new, "broken"}.to raise_error "Dock full"
      #when normal bracekts it is returning the error, rather than taking the error message
      #expect with normal brackets pulls out the fact of *error*, not the message
    end

  end

  it "returns docked bikes" do
    bike = Bike.new
    subject.dock(bike, "broken")
    expect(subject.bikes).to eq [bike]
  end

  it '#release_bike method responds' do
    docking_station = Docking_Station.new
    expect(docking_station).to respond_to :release_bike
    end

  it 'releases working bikes' do
    bike = Bike.new
    subject.dock(bike, "broken")
    expect(subject.release_bike).to eq bike

  end

  # it 'hello world' do
  #   boris = double(Bike)
  #   subject.hello_world
  #   expect(subject.hello_world).to eq "hello world"
  # end

it 'ask the user the bike status and reports status' do
  expect(subject.bike_docking_message).to eq "Is your bike broken?"
  end

    it "report bike as broken" do
      expect(subject.report_broken).to eq "Broken"
    end

it "user can report bike broken when returning" do
  bike = Bike.new
  report = "broken"
  subject.dock bike, report
  expect(subject.dock bike, report).to eq "Broken"
end





end
