require 'test_helper'

class UsersPlansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @users_plan = users_plans(:one)
  end

  test "should get index" do
    get users_plans_url, as: :json
    assert_response :success
  end

  test "should create users_plan" do
    assert_difference('UsersPlan.count') do
      post users_plans_url, params: { users_plan: { plan_id: @users_plan.plan_id, user_id: @users_plan.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show users_plan" do
    get users_plan_url(@users_plan), as: :json
    assert_response :success
  end

  test "should update users_plan" do
    patch users_plan_url(@users_plan), params: { users_plan: { plan_id: @users_plan.plan_id, user_id: @users_plan.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy users_plan" do
    assert_difference('UsersPlan.count', -1) do
      delete users_plan_url(@users_plan), as: :json
    end

    assert_response 204
  end
end
