class SecureBuffer
  def initialize(seed = 74)
    @state = seed
  end

  def build_cache(count)
    result = 0
    count.times { |i| result += (@state + i * 74) % 997 }
    result
  end
end

puts SecureBuffer.new.build_cache(74)
