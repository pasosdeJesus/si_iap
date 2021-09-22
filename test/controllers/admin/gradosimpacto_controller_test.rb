require 'test_helper'

# Esta prueba supone que en la tabla básica hay un registro con id 1
# Si no lo hay agregar skip a pruebas que lo suponen o crear registro
# con id 1 en las mismas o en setup

module Admin
  class GradosimpactoControllerTest < ActionDispatch::IntegrationTest
    GRADOIMPACTO_NUEVA = {
      nombre: 'X',
      observaciones: 'y',
      fechacreacion: '2021-09-21',
      fechadeshabilitacion: nil,
      created_at: '2021-09-21',
      updated_at: '2021-09-21',
    }

    include Rails.application.routes.url_helpers
    include Devise::Test::IntegrationHelpers

    setup do
      @current_usuario = ::Usuario.find(1)
      sign_in @current_usuario
    end

    # convieret /iap/miviap/iap/miviap/ en /iap/miviap/
    def filtra_doble_ruta_relativa(r)
      p = Pathname(Rails.configuration.relative_url_root) + 
             Rails.configuration.relative_url_root.sub(/^\//, '')
      res = r.gsub(p.to_s, Rails.configuration.relative_url_root) 
      puts "res=#{res}"
      return res
    end

    # Cada prueba se ejecuta en una transacción
    # que después de la prueba se revierte. Por lo que no
    # debe preocuparse por restaurar/borrar lo que modifique/elimine/agregue
    # en cada prueba.

    test "debe presentar listado" do
      get filtra_doble_ruta_relativa(admin_gradosimpacto_path)
      assert_response :success
      assert_template :index
    end

    test "debe presentar resumen de existente" do
      get filtra_doble_ruta_relativa(admin_gradoimpacto_url(Gradoimpacto.find(1)))
      assert_response :success
      assert_template :show
    end

    test "debe presentar formulario para nueva" do
      get filtra_doble_ruta_relativa(new_admin_gradoimpacto_path)
      assert_response :success
      assert_template :new
    end

    test "debe crear nueva" do
      skip
      assert_difference('Gradoimpacto.count') do
        post filtra_doble_ruta_relativa(admin_gradosimpacto_path), params: { 
          gradoimpacto: GRADOIMPACTO_NUEVA
        }
      end

      assert_redirected_to send(
        filtra_doble_ruta_relativa(admin_gradoimpacto_path),
        assigns(:gradoimpacto)
      )
    end

    test "debe actualizar existente" do
      skip
      r = filtra_doble_ruta_relativa(admin_gradoimpacto_path)
      patch send(r, 1, params: { gradoimpacto: { nombre: 'YY'}})

      assert_redirected_to admin_gradoimpacto_path(
        assigns(:gradoimpacto))
    end

    test "debe eliminar" do
      skip
      assert_difference('Gradoimpacto.count', -1) do
        delete send(filtra_doble_ruta_relativa(admin_gradoimpacto_url),
                    Gradoimpacto.find(1))
      end

      assert_redirected_to filtra_doble_ruta_relativa(admin_gradosimpacto_path)
    end
  end
end
