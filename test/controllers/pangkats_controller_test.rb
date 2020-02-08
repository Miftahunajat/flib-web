require 'test_helper'

class PangkatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pangkat = pangkats(:one)
  end

  test "should get index" do
    get pangkats_url, as: :json
    assert_response :success
  end

  test "should create pangkat" do
    assert_difference('Pangkat.count') do
      post pangkats_url, params: { pangkat: { code: @pangkat.code, nama: @pangkat.nama } }, as: :json
    end

    assert_response 201
  end

  test "should show pangkat" do
    get pangkat_url(@pangkat), as: :json
    assert_response :success
  end

  test "should update pangkat" do
    patch pangkat_url(@pangkat), params: { pangkat: { code: @pangkat.code, nama: @pangkat.nama } }, as: :json
    assert_response 200
  end

  test "should destroy pangkat" do
    assert_difference('Pangkat.count', -1) do
      delete pangkat_url(@pangkat), as: :json
    end

    assert_response 204
  end
end
