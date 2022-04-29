class CoyonturasregionalesControllerTest < ActionController::TestCase
  setup do
    skip
    @coyonturaregional = Coyonturaregional(:one)
  end

  test "should get index" do
    skip
    get :index
    assert_response :success
    assert_not_nil assigns(:coyonturaregional)
  end

  test "should get new" do
    skip
    get :new
    assert_response :success
  end

  test "should create coyonturaregional" do
    skip
    assert_difference('Coyonturaregional.count') do
      post :create, coyonturaregional: { created_at: @coyonturaregional.created_at, fechacreacion: @coyonturaregional.fechacreacion, fechadeshabilitacion: @coyonturaregional.fechadeshabilitacion, nombre: @coyonturaregional.nombre, observaciones: @coyonturaregional.observaciones, updated_at: @coyonturaregional.updated_at }
    end

    assert_redirected_to coyonturaregional_path(assigns(:coyonturaregional))
  end

  test "should show coyonturaregional" do
    skip
    get :show, id: @coyonturaregional
    assert_response :success
  end

  test "should get edit" do
    skip
    get :edit, id: @coyonturaregional
    assert_response :success
  end

  test "should update coyonturaregional" do
    skip
    patch :update, id: @coyonturaregional, coyonturaregional: { created_at: @coyonturaregional.created_at, fechacreacion: @coyonturaregional.fechacreacion, fechadeshabilitacion: @coyonturaregional.fechadeshabilitacion, nombre: @coyonturaregional.nombre, observaciones: @coyonturaregional.observaciones, updated_at: @coyonturaregional.updated_at }
    assert_redirected_to coyonturaregional_path(assigns(:coyonturaregional))
  end

  test "should destroy coyonturaregional" do
    skip
    assert_difference('Coyonturaregional.count', -1) do
      delete :destroy, id: @coyonturaregional
    end

    assert_redirected_to coyonturasregionales_path
  end
end
