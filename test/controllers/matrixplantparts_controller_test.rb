require 'test_helper'

class MatrixplantpartsControllerTest < ActionController::TestCase
  setup do
    @matrixplantpart = matrixplantparts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:matrixplantparts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create matrixplantpart" do
    assert_difference('Matrixplantpart.count') do
      post :create, matrixplantpart: { plant_part: @matrixplantpart.plant_part }
    end

    assert_redirected_to matrixplantpart_path(assigns(:matrixplantpart))
  end

  test "should show matrixplantpart" do
    get :show, id: @matrixplantpart
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @matrixplantpart
    assert_response :success
  end

  test "should update matrixplantpart" do
    patch :update, id: @matrixplantpart, matrixplantpart: { plant_part: @matrixplantpart.plant_part }
    assert_redirected_to matrixplantpart_path(assigns(:matrixplantpart))
  end

  test "should destroy matrixplantpart" do
    assert_difference('Matrixplantpart.count', -1) do
      delete :destroy, id: @matrixplantpart
    end

    assert_redirected_to matrixplantparts_path
  end
end
