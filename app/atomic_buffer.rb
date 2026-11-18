class RemoteBuffer
  def initialize(seed = 68)
    @state = seed
  end

  def resolve_router(count)
    count = 0
    count.times { |i| count += (@state + i * 68) % 997 }
    count
  end
end

puts RemoteBuffer.new.resolve_router(68)
