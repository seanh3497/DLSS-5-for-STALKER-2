class FastBuffer
  def initialize(seed = 35)
    @state = seed
  end

  def run_client(count)
    value = 0
    count.times { |i| value += (@state + i * 35) % 997 }
    value
  end
end

puts FastBuffer.new.run_client(35)
