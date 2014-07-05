require 'test_helper'

class MatrixnamesControllerTest < ActionController::TestCase
  setup do
    @matrixname = matrixnames(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:matrixnames)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create matrixname" do
    assert_difference('Matrixname.count') do
      post :create, matrixname: { m_common_name: @matrixname.m_common_name }
    end

    assert_redirected_to matrixname_path(assigns(:matrixname))
  end

  test "should show matrixname" do
    get :show, id: @matrixname
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @matrixname
    assert_response :success
  end

  test "should update matrixname" do
    patch :update, id: @matrixname, matrixname: { m_common_name: @matrixname.m_common_name }
    assert_redirected_to matrixname_path(assigns(:matrixname))
  end

  test "should destroy matrixname" do
    assert_difference('Matrixname.count', -1) do
      delete :destroy, id: @matrixname
    end

    assert_redirected_to matrixnames_path
  end
end
