require 'test_helper'

class UserBenefitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_benefit = user_benefits(:one)
  end

  test "should get index" do
    get user_benefits_url, as: :json
    assert_response :success
  end

  test "should create user_benefit" do
    assert_difference('UserBenefit.count') do
      post user_benefits_url, params: { user_benefit: { benefit_id: @user_benefit.benefit_id, user_id: @user_benefit.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show user_benefit" do
    get user_benefit_url(@user_benefit), as: :json
    assert_response :success
  end

  test "should update user_benefit" do
    patch user_benefit_url(@user_benefit), params: { user_benefit: { benefit_id: @user_benefit.benefit_id, user_id: @user_benefit.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy user_benefit" do
    assert_difference('UserBenefit.count', -1) do
      delete user_benefit_url(@user_benefit), as: :json
    end

    assert_response 204
  end
end
