require 'test_helper'

class ContextoTest < ActiveSupport::TestCase
  PRUEBA_CONTEXTO={
    nombre: 'ejemplo',
    fechaini: '2020-01-01',
    fechafin: '2020-12-06',
    region_id: 20 # Catatumbo
  }

  test "valido" do
    contexto = ::Contexto.create(
      PRUEBA_CONTEXTO)
    assert(contexto.valid?)
    contexto.destroy
  end

  test "no valido" do
    contexto = ::Contexto.new(
      PRUEBA_CONTEXTO)
    contexto.nombre = ''
    assert_not(contexto.valid?)
    contexto.destroy
  end

end
