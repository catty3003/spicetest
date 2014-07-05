require 'test_helper'

class MatrixspeciesControllerTest < ActionController::TestCase
  setup do
    @matrixspecy = matrixspecies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:matrixspecies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create matrixspecy" do
    assert_difference('Matrixspecy.count') do
      post :create, matrixspecy: { m_species: @matrixspecy.m_species }
    end

    assert_redirected_to matrixspecy_path(assigns(:matrixspecy))
  end

  test "should show matrixspecy" do
    get :show, id: @matrixspecy
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @matrixspecy
    assert_response :success
  end

  test "should update matrixspecy" do
    patch :update, id: @matrixspecy, matrixspecy: { m_species: @matrixspecy.m_species }
    assert_redirected_to matrixspecy_path(assigns(:matrixspecy))
  end

  test "should destroy matrixspecy" do
    assert_difference('Matrixspecy.count', -1) do
      delete :destroy, id: @matrixspecy
    end

    assert_redirected_to matrixspecies_path
  end
end
