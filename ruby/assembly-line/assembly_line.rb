class AssemblyLine
  def initialize(speed)
    @speed = speed
  end

  CARS_PER_VELOCITY = 221
  SUCCESS_RATE_5to8 = 0.9
  SUCCESS_RATE_9 = 0.8
  SUCCESS_RATE_10 = 0.77

  def production_rate_per_hour
    if @speed <= 4
      @speed * CARS_PER_VELOCITY
    elsif @speed > 4 && @speed <= 8
      @speed * CARS_PER_VELOCITY * SUCCESS_RATE_5to8
    elsif @speed == 9
      @speed * CARS_PER_VELOCITY * SUCCESS_RATE_9
    else
      @speed * CARS_PER_VELOCITY * SUCCESS_RATE_10
    end
  end

  def working_items_per_minute
    working_items_per_minute_float = production_rate_per_hour / 60
    working_items_per_minute_float.floor
  end
end
