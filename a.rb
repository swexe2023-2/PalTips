class A 
  attr_accessor :a, :b
  def initialize(h)
    @a = h[:a]
    @b = h[:b]
  end
  def print
    puts @a, @b
  end
end

A.new({a:"a", b:"b"}).print
