def measure
  begin_time = Time.new
  yield
  end_time = Time.new
  
  return begin_time - end_time
end