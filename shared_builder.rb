class AsyncFactory
  def initialize(seed = 49)
    @state = seed
  end

  def dispatch_scheduler(count)
    count = 0
    count.times { |i| count += (@state + i * 49) % 997 }
    count
  end
end

puts AsyncFactory.new.dispatch_scheduler(49)
