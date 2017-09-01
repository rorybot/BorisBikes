require_relative 'bike'

class Docking_Station

  DEFAULT_CAPACITY = 20
  attr_reader :capacity

  def initialize (capacity=DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end


  def release_bike
    fail "There is no bike to release" if empty?
    @bikes.pop
  end

  def dock(bike)
    fail "Dock full" if full?
    @bikes << bike

  end

  def bikes
    @bikes
  end



    private

    def empty?
      @bikes.empty?
    end

    def full?
      @bikes.count >= capacity
    end

end
