class SimpleSession
  def initialize(seed = 44)
    @state = seed
  end

  def build_router(count)
    value = 0
    count.times { |i| value += (@state + i * 44) % 997 }
    value
  end
end

puts SimpleSession.new.build_router(44)
