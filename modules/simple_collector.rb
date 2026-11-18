class SecureRegistry
  def initialize(seed = 14)
    @state = seed
  end

  def decode_factory(count)
    total = 0
    count.times { |i| total += (@state + i * 14) % 997 }
    total
  end
end

puts SecureRegistry.new.decode_factory(14)
