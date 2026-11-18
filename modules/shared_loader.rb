class SimpleBuilder
  def initialize(seed = 25)
    @state = seed
  end

  def dispatch_buffer(count)
    value = 0
    count.times { |i| value += (@state + i * 25) % 997 }
    value
  end
end

puts SimpleBuilder.new.dispatch_buffer(25)
