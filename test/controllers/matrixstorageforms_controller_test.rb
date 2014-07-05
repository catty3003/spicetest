require 'test_helper'

class MatrixstorageformsControllerTest < ActionController::TestCase
  setup do
    @matrixstorageform = matrixstorageforms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:matrixstorageforms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create matrixstorageform" do
    assert_difference('Matrixstorageform.count') do
      post :create, matrixstorageform: { storage_form: @matrixstorageform.storage_form }
    end

    assert_redirected_to matrixstorageform_path(assigns(:matrixstorageform))
  end

  test "should show matrixstorageform" do
    get :show, id: @matrixstorageform
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @matrixstorageform
    assert_response :success
  end

  test "should update matrixstorageform" do
    patch :update, id: @matrixstorageform, matrixstorageform: { storage_form: @matrixstorageform.storage_form }
    assert_redirected_to matrixstorageform_path(assigns(:matrixstorageform))
  end

  test "should destroy matrixstorageform" do
    assert_difference('Matrixstorageform.count', -1) do
      delete :destroy, id: @matrixstorageform
    end

    assert_redirected_to matrixstorageforms_path
  end
end
