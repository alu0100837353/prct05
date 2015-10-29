class Fracionario
  attr_reader :n, :d
  def initialize(n, d)
    @n, @d = n, d
  end
  def to_s
    "#{@n}/#{@d}"
  end
  def *(value)
    Fracionario.new(@n * value, @d)
  end
  def -@
    Fracionario.new(@n * -1, @d)
  end
  
end