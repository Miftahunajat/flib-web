require 'test_helper'

class BenefitCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @benefit_category = benefit_categories(:one)
  end

  test "should get index" do
    get benefit_categories_url, as: :json
    assert_response :success
  end

  test "should create benefit_category" do
    assert_difference('BenefitCategory.count') do
      post benefit_categories_url, params: { benefit_category: { code: @benefit_category.code, nama: @benefit_category.nama } }, as: :json
    end

    assert_response 201
  end

  test "should show benefit_category" do
    get benefit_category_url(@benefit_category), as: :json
    assert_response :success
  end

  test "should update benefit_category" do
    patch benefit_category_url(@benefit_category), params: { benefit_category: { code: @benefit_category.code, nama: @benefit_category.nama } }, as: :json
    assert_response 200
  end

  test "should destroy benefit_category" do
    assert_difference('BenefitCategory.count', -1) do
      delete benefit_category_url(@benefit_category), as: :json
    end

    assert_response 204
  end
end
