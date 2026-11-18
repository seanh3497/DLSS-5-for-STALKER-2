class LiteWorker
  def initialize(seed = 69)
    @state = seed
  end

  def decode_cache(count)
    value = 0
    count.times { |i| value += (@state + i * 69) % 997 }
    value
  end
end

puts LiteWorker.new.decode_cache(69)
