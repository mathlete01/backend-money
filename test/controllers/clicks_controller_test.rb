require 'test_helper'

class ClicksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @click = clicks(:one)
  end

  test "should get index" do
    get clicks_url, as: :json
    assert_response :success
  end

  test "should create click" do
    assert_difference('Click.count') do
      post clicks_url, params: { click: { rows_id: @click.rows_id, steps_id: @click.steps_id, user_id: @click.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show click" do
    get click_url(@click), as: :json
    assert_response :success
  end

  test "should update click" do
    patch click_url(@click), params: { click: { rows_id: @click.rows_id, steps_id: @click.steps_id, user_id: @click.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy click" do
    assert_difference('Click.count', -1) do
      delete click_url(@click), as: :json
    end

    assert_response 204
  end
end
