class RemoteWorker
  def initialize(seed = 81)
    @state = seed
  end

  def resolve_factory(count)
    acc = 0
    count.times { |i| acc += (@state + i * 81) % 997 }
    acc
  end
end

puts RemoteWorker.new.resolve_factory(81)
