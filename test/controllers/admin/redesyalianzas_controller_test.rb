require 'test_helper'

# Esta prueba supone que en la tabla básica hay un registro con id 1
# Si no lo hay agregar skip a pruebas que lo suponen o crear registro
# con id 1 en las mismas o en setup

module Admin
  class RedesyalianzasControllerTest < ActionDispatch::IntegrationTest
    REDYALIANZA_NUEVA = {
      nombre: 'X',
      observaciones: 'y',
      fechacreacion: '2021-10-10',
      fechadeshabilitacion: nil,
      created_at: '2021-10-10',
      updated_at: '2021-10-10',
    }

    include Rails.application.routes.url_helpers
    include Devise::Test::IntegrationHelpers

    setup do
      @current_usuario = ::Usuario.find(1)
      sign_in @current_usuario
    end

    # Cada prueba se ejecuta en una transacción de la base de datos
    # que después de la prueba se revierte. Por lo que no
    # debe preocuparse por restaurar/borrar lo que modifique/elimine/agregue
    # en cada prueba.

    test "debe presentar listado" do
      get filtra_doble_ruta_relativa(admin_redesyalianzas_path)
      assert_response :success
      assert_template :index
    end

    test "debe presentar resumen de existente" do
      get filtra_doble_ruta_relativa(admin_redyalianza_url(Redyalianza.find(1)))
      assert_response :success
      assert_template :show
    end

    test "debe presentar formulario para nueva" do
      get filtra_doble_ruta_relativa(new_admin_redyalianza_path)
      assert_response :success
      assert_template :new
    end

    test "debe crear nueva" do
      assert_difference('Redyalianza.count') do
        post filtra_doble_ruta_relativa(admin_redesyalianzas_path), params: { 
          redyalianza: REDYALIANZA_NUEVA
        }
      end

      assert_redirected_to filtra_doble_ruta_relativa(admin_redyalianza_path(
        assigns(:redyalianza)))
    end

    test "debe actualizar existente" do
      patch filtra_doble_ruta_relativa(admin_redyalianza_path(Redyalianza.find(1))),
        params: { redyalianza: { nombre: 'YY'}}

      assert_redirected_to filtra_doble_ruta_relativa(admin_redyalianza_path(
        assigns(:redyalianza)))
    end

    test "debe eliminar" do
      skip
      assert_difference('Redyalianza.count', -1) do
        delete filtra_doble_ruta_relativa(admin_redyalianza_url(Redyalianza.find(1)))
      end

      assert_redirected_to filtra_doble_ruta_relativa(admin_redesyalianzas_path)
    end
  end
end
