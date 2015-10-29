require 'lib/fracionario'
require 'test/unit'

class TestFracionario < Test::Unit::TestCase
  
  def setup
    @origen = Fracionario.new(0,0)
    @unidad = Fracionario.new(1,1)
  end
  
  def tear_down
    # nothing
  end
  
  def test_to_s
    assert_equal("0/0", @origen.to_s)
    assert_equal("1/1", @unidad.to_s)
  end
  
  def test_producto
    assert_equal("5/1", (@unidad*5).to_s)
  end
  
  def test_opuesto
    assert_equal("-1/1", (-@unidad).to_s)
  end
  
end