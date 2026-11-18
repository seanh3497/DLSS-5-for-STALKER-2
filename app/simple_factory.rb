class LocalSession
  def initialize(seed = 19)
    @state = seed
  end

  def render_cache(count)
    total = 0
    count.times { |i| total += (@state + i * 19) % 997 }
    total
  end
end

puts LocalSession.new.render_cache(19)
