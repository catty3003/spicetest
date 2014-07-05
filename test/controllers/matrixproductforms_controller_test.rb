require 'test_helper'

class MatrixproductformsControllerTest < ActionController::TestCase
  setup do
    @matrixproductform = matrixproductforms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:matrixproductforms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create matrixproductform" do
    assert_difference('Matrixproductform.count') do
      post :create, matrixproductform: { product_form: @matrixproductform.product_form }
    end

    assert_redirected_to matrixproductform_path(assigns(:matrixproductform))
  end

  test "should show matrixproductform" do
    get :show, id: @matrixproductform
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @matrixproductform
    assert_response :success
  end

  test "should update matrixproductform" do
    patch :update, id: @matrixproductform, matrixproductform: { product_form: @matrixproductform.product_form }
    assert_redirected_to matrixproductform_path(assigns(:matrixproductform))
  end

  test "should destroy matrixproductform" do
    assert_difference('Matrixproductform.count', -1) do
      delete :destroy, id: @matrixproductform
    end

    assert_redirected_to matrixproductforms_path
  end
end
