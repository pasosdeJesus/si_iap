class ContextosControllerTest < ActionController::TestCase
  setup do
    skip
    @contexto = Contexto(:one)
  end

  test "should get index" do
    skip
    get :index
    assert_response :success
    assert_not_nil assigns(:contexto)
  end

  test "should get new" do
    skip
    get :new
    assert_response :success
  end

  test "should create contexto" do
    skip
    assert_difference('Contexto.count') do
      post :create, contexto: { created_at: @contexto.created_at, fechacreacion: @contexto.fechacreacion, fechadeshabilitacion: @contexto.fechadeshabilitacion, nombre: @contexto.nombre, observaciones: @contexto.observaciones, updated_at: @contexto.updated_at }
    end

    assert_redirected_to contexto_path(assigns(:contexto))
  end

  test "should show contexto" do
    skip
    get :show, id: @contexto
    assert_response :success
  end

  test "should get edit" do
    skip
    get :edit, id: @contexto
    assert_response :success
  end

  test "should update contexto" do
    skip
    patch :update, id: @contexto, contexto: { created_at: @contexto.created_at, fechacreacion: @contexto.fechacreacion, fechadeshabilitacion: @contexto.fechadeshabilitacion, nombre: @contexto.nombre, observaciones: @contexto.observaciones, updated_at: @contexto.updated_at }
    assert_redirected_to contexto_path(assigns(:contexto))
  end

  test "should destroy contexto" do
    skip
    assert_difference('Contexto.count', -1) do
      delete :destroy, id: @contexto
    end

    assert_redirected_to contextoes_path
  end
end
