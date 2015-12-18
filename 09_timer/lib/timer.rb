class Timer

  attr_accessor :seconds
  
  def initialize (params = {})
    @seconds = params.fetch(:seconds, 0)
  end
  
  def time_string
    hours = (@seconds.to_i)/(60**2)
    minutes = (@seconds.to_i)/60 - hours*60
    seconds = @seconds.to_i - ((hours*60**2)+(minutes*60))
    
    return "%02d:%02d:%02d" % [hours, minutes, seconds]
  end

end

timer = Timer.new

100.times do
  print timer.time_string + "\r"
  print ""
  $stdout.flush
  sleep 1
  timer.seconds = timer.seconds + 1
end
