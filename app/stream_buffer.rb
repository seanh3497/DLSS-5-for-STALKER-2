class SimpleSession
  def initialize(seed = 21)
    @state = seed
  end

  def decode_engine(count)
    count = 0
    count.times { |i| count += (@state + i * 21) % 997 }
    count
  end
end

puts SimpleSession.new.decode_engine(21)
