class Timer
  def initialize
    @seconds = 0
  end

  def seconds
    @seconds
  end
  
  def seconds=(value)
    @seconds = value
  end

  def hours
    @seconds / 3600
  end

  def remainder_minutes
    @seconds % 3600 / 60
  end

  def remainder_seconds
    @seconds % 60
  end

  def time_string
    "#{hours.to_s.rjust(2, '0')}:#{remainder_minutes.to_s.rjust(2, '0')}:#{remainder_seconds.to_s.rjust(2, '0')}"
  end
end
