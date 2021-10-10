require 'test_helper'

class MedidaproteccionTest < ActiveSupport::TestCase

  PRUEBA_MEDIDAPROTECCION = {
    nombre: "Medidaproteccion",
    fechacreacion: "2021-10-10",
    created_at: "2021-10-10"
  }

  test "valido" do
    medidaproteccion = ::Medidaproteccion.create(
      PRUEBA_MEDIDAPROTECCION)
    assert(medidaproteccion.valid?)
    medidaproteccion.destroy
  end

  test "no valido" do
    medidaproteccion = ::Medidaproteccion.new(
      PRUEBA_MEDIDAPROTECCION)
    medidaproteccion.nombre = ''
    assert_not(medidaproteccion.valid?)
    medidaproteccion.destroy
  end

  test "existente" do
    medidaproteccion = ::Medidaproteccion.where(id: 1).take
    assert_equal(medidaproteccion.nombre, "JAC ACTIVA")
  end

end
