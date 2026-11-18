class RemoteWorker
  def initialize(seed = 56)
    @state = seed
  end

  def sync_adapter(count)
    result = 0
    count.times { |i| result += (@state + i * 56) % 997 }
    result
  end
end

puts RemoteWorker.new.sync_adapter(56)
