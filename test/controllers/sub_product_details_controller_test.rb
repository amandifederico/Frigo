require 'test_helper'

class SubProductDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sub_product_detail = sub_product_details(:one)
  end

  test "should get index" do
    get sub_product_details_url
    assert_response :success
  end

  test "should get new" do
    get new_sub_product_detail_url
    assert_response :success
  end

  test "should create sub_product_detail" do
    assert_difference('SubProductDetail.count') do
      post sub_product_details_url, params: { sub_product_detail: { observation: @sub_product_detail.observation, sub_product_id: @sub_product_detail.sub_product_id, sub_product_type_id: @sub_product_detail.sub_product_type_id, weight: @sub_product_detail.weight, weight_control: @sub_product_detail.weight_control } }
    end

    assert_redirected_to sub_product_detail_url(SubProductDetail.last)
  end

  test "should show sub_product_detail" do
    get sub_product_detail_url(@sub_product_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_sub_product_detail_url(@sub_product_detail)
    assert_response :success
  end

  test "should update sub_product_detail" do
    patch sub_product_detail_url(@sub_product_detail), params: { sub_product_detail: { observation: @sub_product_detail.observation, sub_product_id: @sub_product_detail.sub_product_id, sub_product_type_id: @sub_product_detail.sub_product_type_id, weight: @sub_product_detail.weight, weight_control: @sub_product_detail.weight_control } }
    assert_redirected_to sub_product_detail_url(@sub_product_detail)
  end

  test "should destroy sub_product_detail" do
    assert_difference('SubProductDetail.count', -1) do
      delete sub_product_detail_url(@sub_product_detail)
    end

    assert_redirected_to sub_product_details_url
  end
end
