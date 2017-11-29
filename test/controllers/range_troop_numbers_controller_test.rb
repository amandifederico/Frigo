require 'test_helper'

class RangeTroopNumbersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @range_troop_number = range_troop_numbers(:one)
  end

  test "should get index" do
    get range_troop_numbers_url
    assert_response :success
  end

  test "should get new" do
    get new_range_troop_number_url
    assert_response :success
  end

  test "should create range_troop_number" do
    assert_difference('RangeTroopNumber.count') do
      post range_troop_numbers_url, params: { range_troop_number: { max: @range_troop_number.max, min: @range_troop_number.min } }
    end

    assert_redirected_to range_troop_number_url(RangeTroopNumber.last)
  end

  test "should show range_troop_number" do
    get range_troop_number_url(@range_troop_number)
    assert_response :success
  end

  test "should get edit" do
    get edit_range_troop_number_url(@range_troop_number)
    assert_response :success
  end

  test "should update range_troop_number" do
    patch range_troop_number_url(@range_troop_number), params: { range_troop_number: { max: @range_troop_number.max, min: @range_troop_number.min } }
    assert_redirected_to range_troop_number_url(@range_troop_number)
  end

  test "should destroy range_troop_number" do
    assert_difference('RangeTroopNumber.count', -1) do
      delete range_troop_number_url(@range_troop_number)
    end

    assert_redirected_to range_troop_numbers_url
  end
end
