require 'test_helper'

class CoyonturaregionalTest < ActiveSupport::TestCase
  PRUEBA_COYONTURAREGIONAL={
    nombre: 'ejemplo',
    fechaini: '2020-01-01',
    fechafin: '2020-12-06',
    region_id: 20 # Catatumbo
  }

  test "valido" do
    coyonturaregional = ::Coyonturaregional.create(
      PRUEBA_COYONTURAREGIONAL)
    assert(coyonturaregional.valid?)
    coyonturaregional.destroy
  end

  test "no valido" do
    coyonturaregional = ::Coyonturaregional.new(
      PRUEBA_COYONTURAREGIONAL)
    coyonturaregional.nombre = ''
    assert_not(coyonturaregional.valid?)
    coyonturaregional.destroy
  end

end
