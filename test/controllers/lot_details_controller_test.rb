require 'test_helper'

class LotDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lot_detail = lot_details(:one)
  end

  test "should get index" do
    get lot_details_url
    assert_response :success
  end

  test "should get new" do
    get new_lot_detail_url
    assert_response :success
  end

  test "should create lot_detail" do
    assert_difference('LotDetail.count') do
      post lot_details_url, params: { lot_detail: { animal_id: @lot_detail.animal_id, lot_id: @lot_detail.lot_id, observation: @lot_detail.observation, quantity: @lot_detail.quantity } }
    end

    assert_redirected_to lot_detail_url(LotDetail.last)
  end

  test "should show lot_detail" do
    get lot_detail_url(@lot_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_lot_detail_url(@lot_detail)
    assert_response :success
  end

  test "should update lot_detail" do
    patch lot_detail_url(@lot_detail), params: { lot_detail: { animal_id: @lot_detail.animal_id, lot_id: @lot_detail.lot_id, observation: @lot_detail.observation, quantity: @lot_detail.quantity } }
    assert_redirected_to lot_detail_url(@lot_detail)
  end

  test "should destroy lot_detail" do
    assert_difference('LotDetail.count', -1) do
      delete lot_detail_url(@lot_detail)
    end

    assert_redirected_to lot_details_url
  end
end
