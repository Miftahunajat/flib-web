require 'test_helper'

class LimitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @limit = limits(:one)
  end

  test "should get index" do
    get limits_url, as: :json
    assert_response :success
  end

  test "should create limit" do
    assert_difference('Limit.count') do
      post limits_url, params: { limit: { benefit_id: @limit.benefit_id, pangkat_id: @limit.pangkat_id } }, as: :json
    end

    assert_response 201
  end

  test "should show limit" do
    get limit_url(@limit), as: :json
    assert_response :success
  end

  test "should update limit" do
    patch limit_url(@limit), params: { limit: { benefit_id: @limit.benefit_id, pangkat_id: @limit.pangkat_id } }, as: :json
    assert_response 200
  end

  test "should destroy limit" do
    assert_difference('Limit.count', -1) do
      delete limit_url(@limit), as: :json
    end

    assert_response 204
  end
end
