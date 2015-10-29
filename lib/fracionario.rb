class Fracionario
  attr_reader :num, :den
  def initialize(n, d)
    @num = n
    @den = d
  end
  def to_s
    "#{@num}/#{@den}"
  end
  def -@
    Fracionario.new(@num * -1, @den)
  end
  def +(other)
    Fracionario.new( ( @num * other.den + other.num * @den ) , ( @den * other.den ) )
  end
  def -(other)
    Fracionario.new( ( @num * other.den - other.num * @den ) , ( @den * other.den ) )
  end
  def *(other)
    Fracionario.new( ( @num * other.num ) , ( @den * other.den ) )
  end
  def /(other)
    Fracionario.new( ( @num * other.den ) , ( @den * other.num ) )
  end
  
end