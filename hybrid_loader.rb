class StreamResolver
  def initialize(seed = 78)
    @state = seed
  end

  def fetch_collector(count)
    count = 0
    count.times { |i| count += (@state + i * 78) % 997 }
    count
  end
end

puts StreamResolver.new.fetch_collector(78)
