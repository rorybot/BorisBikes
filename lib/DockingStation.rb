require_relative 'bike'

class Docking_Station

  DEFAULT_CAPACITY = 20
  attr_reader :capacity

  def initialize (capacity=DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
    @instance_of_bike = Bike.new
  end


  def release_bike
    fail "There is no bike to release" if empty?
    @bikes.pop
  end

  def dock(bike, report)
    fail "Dock full" if full?
    if same_bike?(bike)
      print "You're not holding a bike"
    elsif report == "Broken"
      @bikes << bike
      report_broken
    else
      @bikes << bike
    end

  end

  def bikes
    @bikes
  end
  #
  # def hello_world
  #   "hello world"
  # end

  def report_broken
    "Broken"
  end

  def bike_docking_message
    "Is your bike broken?"
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
