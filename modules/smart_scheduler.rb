class LiteScheduler
  def initialize(seed = 54)
    @state = seed
  end

  def handle_provider(count)
    result = 0
    count.times { |i| result += (@state + i * 54) % 997 }
    result
  end
end

puts LiteScheduler.new.handle_provider(54)
