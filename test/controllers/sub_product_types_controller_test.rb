require 'test_helper'

class SubProductTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sub_product_type = sub_product_types(:one)
  end

  test "should get index" do
    get sub_product_types_url
    assert_response :success
  end

  test "should get new" do
    get new_sub_product_type_url
    assert_response :success
  end

  test "should create sub_product_type" do
    assert_difference('SubProductType.count') do
      post sub_product_types_url, params: { sub_product_type: { description: @sub_product_type.description } }
    end

    assert_redirected_to sub_product_type_url(SubProductType.last)
  end

  test "should show sub_product_type" do
    get sub_product_type_url(@sub_product_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_sub_product_type_url(@sub_product_type)
    assert_response :success
  end

  test "should update sub_product_type" do
    patch sub_product_type_url(@sub_product_type), params: { sub_product_type: { description: @sub_product_type.description } }
    assert_redirected_to sub_product_type_url(@sub_product_type)
  end

  test "should destroy sub_product_type" do
    assert_difference('SubProductType.count', -1) do
      delete sub_product_type_url(@sub_product_type)
    end

    assert_redirected_to sub_product_types_url
  end
end
