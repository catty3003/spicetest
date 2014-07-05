require 'test_helper'

class MatrixgenusControllerTest < ActionController::TestCase
  setup do
    @matrixgenu = matrixgenus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:matrixgenus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create matrixgenu" do
    assert_difference('Matrixgenu.count') do
      post :create, matrixgenu: { m_genus: @matrixgenu.m_genus }
    end

    assert_redirected_to matrixgenu_path(assigns(:matrixgenu))
  end

  test "should show matrixgenu" do
    get :show, id: @matrixgenu
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @matrixgenu
    assert_response :success
  end

  test "should update matrixgenu" do
    patch :update, id: @matrixgenu, matrixgenu: { m_genus: @matrixgenu.m_genus }
    assert_redirected_to matrixgenu_path(assigns(:matrixgenu))
  end

  test "should destroy matrixgenu" do
    assert_difference('Matrixgenu.count', -1) do
      delete :destroy, id: @matrixgenu
    end

    assert_redirected_to matrixgenus_path
  end
end
