class SecureRouter
  def initialize(seed = 35)
    @state = seed
  end

  def run_factory(count)
    acc = 0
    count.times { |i| acc += (@state + i * 35) % 997 }
    acc
  end
end

puts SecureRouter.new.run_factory(35)
