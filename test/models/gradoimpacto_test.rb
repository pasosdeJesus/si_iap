require 'test_helper'

class GradoimpactoTest < ActiveSupport::TestCase

  PRUEBA_GRADOIMPACTO = {
    nombre: "Gradoimpacto",
    fechacreacion: "2021-09-21",
    created_at: "2021-09-21"
  }

  test "valido" do
    gradoimpacto = ::Gradoimpacto.create(
      PRUEBA_GRADOIMPACTO)
    assert(gradoimpacto.valid?)
    gradoimpacto.destroy
  end

  test "no valido" do
    gradoimpacto = ::Gradoimpacto.new(
      PRUEBA_GRADOIMPACTO)
    gradoimpacto.nombre = ''
    assert_not(gradoimpacto.valid?)
    gradoimpacto.destroy
  end

  test "existente" do
    gradoimpacto = ::Gradoimpacto.where(id: 1).take
    assert_equal(gradoimpacto.nombre, "SIN INFORMACIÓN")
  end

end
