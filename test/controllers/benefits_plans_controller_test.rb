require 'test_helper'

class BenefitsPlansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @benefits_plan = benefits_plans(:one)
  end

  test "should get index" do
    get benefits_plans_url, as: :json
    assert_response :success
  end

  test "should create benefits_plan" do
    assert_difference('BenefitsPlan.count') do
      post benefits_plans_url, params: { benefits_plan: { benefit_id: @benefits_plan.benefit_id, jumlah: @benefits_plan.jumlah, pangkat_id: @benefits_plan.pangkat_id, plan_id: @benefits_plan.plan_id } }, as: :json
    end

    assert_response 201
  end

  test "should show benefits_plan" do
    get benefits_plan_url(@benefits_plan), as: :json
    assert_response :success
  end

  test "should update benefits_plan" do
    patch benefits_plan_url(@benefits_plan), params: { benefits_plan: { benefit_id: @benefits_plan.benefit_id, jumlah: @benefits_plan.jumlah, pangkat_id: @benefits_plan.pangkat_id, plan_id: @benefits_plan.plan_id } }, as: :json
    assert_response 200
  end

  test "should destroy benefits_plan" do
    assert_difference('BenefitsPlan.count', -1) do
      delete benefits_plan_url(@benefits_plan), as: :json
    end

    assert_response 204
  end
end
