require 'test_helper'

class ActualDangersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @actual_danger = actual_dangers(:one)
  end

  test "should get index" do
    get actual_dangers_url
    assert_response :success
  end

  test "should get new" do
    get new_actual_danger_url
    assert_response :success
  end

  test "should create actual_danger" do
    assert_difference('ActualDanger.count') do
      post actual_dangers_url, params: { actual_danger: { name: @actual_danger.name } }
    end

    assert_redirected_to actual_danger_url(ActualDanger.last)
  end

  test "should show actual_danger" do
    get actual_danger_url(@actual_danger)
    assert_response :success
  end

  test "should get edit" do
    get edit_actual_danger_url(@actual_danger)
    assert_response :success
  end

  test "should update actual_danger" do
    patch actual_danger_url(@actual_danger), params: { actual_danger: { name: @actual_danger.name } }
    assert_redirected_to actual_danger_url(@actual_danger)
  end

  test "should destroy actual_danger" do
    assert_difference('ActualDanger.count', -1) do
      delete actual_danger_url(@actual_danger)
    end

    assert_redirected_to actual_dangers_url
  end
end
