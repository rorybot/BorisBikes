require 'Bike'

describe Bike do
  it 'check if bike works' do
    bike = Bike.new
    expect(bike).to respond_to :working?
  end

end
