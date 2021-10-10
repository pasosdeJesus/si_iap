require 'test_helper'

class RedyalianzaTest < ActiveSupport::TestCase

  PRUEBA_REDYALIANZA = {
    nombre: "Redyalianza",
    fechacreacion: "2021-10-10",
    created_at: "2021-10-10"
  }

  test "valido" do
    redyalianza = ::Redyalianza.create(
      PRUEBA_REDYALIANZA)
    assert(redyalianza.valid?)
    redyalianza.destroy
  end

  test "no valido" do
    redyalianza = ::Redyalianza.new(
      PRUEBA_REDYALIANZA)
    redyalianza.nombre = ''
    assert_not(redyalianza.valid?)
    redyalianza.destroy
  end

  test "existente" do
    redyalianza = ::Redyalianza.where(id: 1).take
    assert_equal(redyalianza.nombre, "INSTITUCIONES")
  end

end
