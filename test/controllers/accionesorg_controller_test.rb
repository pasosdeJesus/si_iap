class AccionesorgControllerTest < ActionController::TestCase
  setup do
    skip
    @accionorg = Accionorg(:one)
  end

  test "should get index" do
    skip
    get :index
    assert_response :success
    assert_not_nil assigns(:accionorg)
  end

  test "should get new" do
    skip
    get :new
    assert_response :success
  end

  test "should create accionorg" do
    skip
    assert_difference('Accionorg.count') do
      post :create, accionorg: { created_at: @accionorg.created_at, fechacreacion: @accionorg.fechacreacion, fechadeshabilitacion: @accionorg.fechadeshabilitacion, nombre: @accionorg.nombre, observaciones: @accionorg.observaciones, updated_at: @accionorg.updated_at }
    end

    assert_redirected_to accionorg_path(assigns(:accionorg))
  end

  test "should show accionorg" do
    skip
    get :show, id: @accionorg
    assert_response :success
  end

  test "should get edit" do
    skip
    get :edit, id: @accionorg
    assert_response :success
  end

  test "should update accionorg" do
    skip
    patch :update, id: @accionorg, accionorg: { created_at: @accionorg.created_at, fechacreacion: @accionorg.fechacreacion, fechadeshabilitacion: @accionorg.fechadeshabilitacion, nombre: @accionorg.nombre, observaciones: @accionorg.observaciones, updated_at: @accionorg.updated_at }
    assert_redirected_to accionorg_path(assigns(:accionorg))
  end

  test "should destroy accionorg" do
    skip
    assert_difference('Accionorg.count', -1) do
      delete :destroy, id: @accionorg
    end

    assert_redirected_to accionorges_path
  end
end
