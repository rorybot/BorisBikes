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
    same_bike?(bike) ? (print "You're not holding a bike"):(@bikes << bike)

  end

  def bikes
    @bikes
  end

  def hello_world
    "hello world"
  end


    private

    def empty?
      if 1 == 1
      @bikes.empty?
    end
    end


    def full?
      @bikes.count >= capacity
    end

    def same_bike?(bike)
      @bikes.include? bike
    end



end
