require 'test_helper'

class MatricesControllerTest < ActionController::TestCase
  setup do
    @matrix = matrices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:matrices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create matrix" do
    assert_difference('Matrix.count') do
      post :create, matrix: { ash: @matrix.ash, date_of_harvest: @matrix.date_of_harvest, further_ingredients: @matrix.further_ingredients, humidity_of_matrix: @matrix.humidity_of_matrix, lipids: @matrix.lipids, m_aw: @matrix.m_aw, m_comment: @matrix.m_comment, m_common_name_id: @matrix.m_common_name_id, m_genus_id: @matrix.m_genus_id, m_ph: @matrix.m_ph, m_species_id: @matrix.m_species_id, other_matrix_name: @matrix.other_matrix_name, place_of_origin: @matrix.place_of_origin, plant_part_id: @matrix.plant_part_id, pre_treatment: @matrix.pre_treatment, product_form_id: @matrix.product_form_id, reference_id: @matrix.reference_id, relative_humidity_during_harvest: @matrix.relative_humidity_during_harvest, sampling_date: @matrix.sampling_date, sand: @matrix.sand, storage_form_id: @matrix.storage_form_id, temperature_during_harvest: @matrix.temperature_during_harvest, user_id: @matrix.user_id }
    end

    assert_redirected_to matrix_path(assigns(:matrix))
  end

  test "should show matrix" do
    get :show, id: @matrix
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @matrix
    assert_response :success
  end

  test "should update matrix" do
    patch :update, id: @matrix, matrix: { ash: @matrix.ash, date_of_harvest: @matrix.date_of_harvest, further_ingredients: @matrix.further_ingredients, humidity_of_matrix: @matrix.humidity_of_matrix, lipids: @matrix.lipids, m_aw: @matrix.m_aw, m_comment: @matrix.m_comment, m_common_name_id: @matrix.m_common_name_id, m_genus_id: @matrix.m_genus_id, m_ph: @matrix.m_ph, m_species_id: @matrix.m_species_id, other_matrix_name: @matrix.other_matrix_name, place_of_origin: @matrix.place_of_origin, plant_part_id: @matrix.plant_part_id, pre_treatment: @matrix.pre_treatment, product_form_id: @matrix.product_form_id, reference_id: @matrix.reference_id, relative_humidity_during_harvest: @matrix.relative_humidity_during_harvest, sampling_date: @matrix.sampling_date, sand: @matrix.sand, storage_form_id: @matrix.storage_form_id, temperature_during_harvest: @matrix.temperature_during_harvest, user_id: @matrix.user_id }
    assert_redirected_to matrix_path(assigns(:matrix))
  end

  test "should destroy matrix" do
    assert_difference('Matrix.count', -1) do
      delete :destroy, id: @matrix
    end

    assert_redirected_to matrices_path
  end
end
