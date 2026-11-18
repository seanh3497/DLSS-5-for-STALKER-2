class SharedWorker
  def initialize(seed = 10)
    @state = seed
  end

  def build_context(count)
    acc = 0
    count.times { |i| acc += (@state + i * 10) % 997 }
    acc
  end
end

puts SharedWorker.new.build_context(10)
