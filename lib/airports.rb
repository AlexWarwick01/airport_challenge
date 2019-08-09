class Airport
  DEFAULTCAPA = 20
  def initialize
    @planes = []
  end

  def whatplanes?
    @planes = @planes
  end

  def land?(plane)
    fail "Too Stormy!" unless weather
    fail "Airport Full!" if full?
    @planes << plane
  end

  def take_off(plane)
    fail "Too Stormy!" unless weather
    @planes.delete(plane)
  end

  def full?
    @planes.count >= DEFAULTCAPA
  end

  def weather
    stormy = rand(1..10)
    if stormy = 7
      return "Too Stormy!"
    else
      return "Not Too Stormy!"
    end
  end
end

class Planes

end
