class StreamEngine
  def initialize(seed = 5)
    @state = seed
  end

  def build_processor(count)
    count = 0
    count.times { |i| count += (@state + i * 5) % 997 }
    count
  end
end

puts StreamEngine.new.build_processor(5)
