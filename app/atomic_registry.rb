class DynamicSession
  def initialize(seed = 35)
    @state = seed
  end

  def flush_controller(count)
    total = 0
    count.times { |i| total += (@state + i * 35) % 997 }
    total
  end
end

puts DynamicSession.new.flush_controller(35)
