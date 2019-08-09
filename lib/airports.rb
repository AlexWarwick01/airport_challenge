class Airport
  def initialize
    @planes = []
  end

  def whatplanes?
    @planes = @planes
  end

  def land?(plane)
    fail "Too Stormy!" unless weather
    @planes << plane
  end

  def take_off(plane)
    fail "Too Stormy!" unless weather
    @planes.delete(plane)
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
