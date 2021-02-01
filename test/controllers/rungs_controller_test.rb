require 'test_helper'

class RungsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rung = rungs(:one)
  end

  test "should get index" do
    get rungs_url, as: :json
    assert_response :success
  end

  test "should create rung" do
    assert_difference('Rung.count') do
      post rungs_url, params: { rung: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show rung" do
    get rung_url(@rung), as: :json
    assert_response :success
  end

  test "should update rung" do
    patch rung_url(@rung), params: { rung: {  } }, as: :json
    assert_response 200
  end

  test "should destroy rung" do
    assert_difference('Rung.count', -1) do
      delete rung_url(@rung), as: :json
    end

    assert_response 204
  end
end
