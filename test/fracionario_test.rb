require 'lib/fracionario'
require 'test/unit'

class TestFracionario < Test::Unit::TestCase
  
  def setup
    @origen = Fracionario.new(0,0)
    @unidad = Fracionario.new(1,1)
    @tres   = Fracionario.new(3,3)
    @cinco  = Fracionario.new(5,5)
    
  end
  
  def tear_down
    # nothing
  end
  
  def test_to_s
    assert_equal("0/0", @origen.to_s)
    assert_equal("1/1", @unidad.to_s)
  end
  
  def test_opuesto
    assert_equal("-1/1", (-@unidad).to_s)
    assert_equal("-3/3", (-@tres).to_s)
  end
  
  def test_suma
    assert_equal("0/0", (@origen+@unidad).to_s)
    assert_equal("10/5", (@unidad+@cinco).to_s)
  end
  
  def test_resta
    assert_equal("0/1", (@unidad-@unidad).to_s)
  end
  
  def test_multiplicacion
    assert_equal("15/15", ((@cinco)*(@tres)).to_s)
  end
  
  def test_division
    assert_equal("15/15", ((@cinco)*(@tres)).to_s)
  end
  
  
  
end