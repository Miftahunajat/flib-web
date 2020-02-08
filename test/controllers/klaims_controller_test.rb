require 'test_helper'

class KlaimsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @klaim = klaims(:one)
  end

  test "should get index" do
    get klaims_url, as: :json
    assert_response :success
  end

  test "should create klaim" do
    assert_difference('Klaim.count') do
      post klaims_url, params: { klaim: { benefit_id: @klaim.benefit_id, foto: @klaim.foto, jumlah: @klaim.jumlah, status_id: @klaim.status_id, tangga: @klaim.tangga, tempat: @klaim.tempat, user_id: @klaim.user_id, verified: @klaim.verified } }, as: :json
    end

    assert_response 201
  end

  test "should show klaim" do
    get klaim_url(@klaim), as: :json
    assert_response :success
  end

  test "should update klaim" do
    patch klaim_url(@klaim), params: { klaim: { benefit_id: @klaim.benefit_id, foto: @klaim.foto, jumlah: @klaim.jumlah, status_id: @klaim.status_id, tangga: @klaim.tangga, tempat: @klaim.tempat, user_id: @klaim.user_id, verified: @klaim.verified } }, as: :json
    assert_response 200
  end

  test "should destroy klaim" do
    assert_difference('Klaim.count', -1) do
      delete klaim_url(@klaim), as: :json
    end

    assert_response 204
  end
end
