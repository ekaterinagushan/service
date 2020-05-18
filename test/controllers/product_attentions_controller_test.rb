require 'test_helper'

class ProductAttentionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product_attention = product_attentions(:one)
  end

  test "should get index" do
    get product_attentions_url
    assert_response :success
  end

  test "should get new" do
    get new_product_attention_url
    assert_response :success
  end

  test "should create product_attention" do
    assert_difference('ProductAttention.count') do
      post product_attentions_url, params: { product_attention: { actual_danger_id: @product_attention.actual_danger_id, product_id: @product_attention.product_id } }
    end

    assert_redirected_to product_attention_url(ProductAttention.last)
  end

  test "should show product_attention" do
    get product_attention_url(@product_attention)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_attention_url(@product_attention)
    assert_response :success
  end

  test "should update product_attention" do
    patch product_attention_url(@product_attention), params: { product_attention: { actual_danger_id: @product_attention.actual_danger_id, product_id: @product_attention.product_id } }
    assert_redirected_to product_attention_url(@product_attention)
  end

  test "should destroy product_attention" do
    assert_difference('ProductAttention.count', -1) do
      delete product_attention_url(@product_attention)
    end

    assert_redirected_to product_attentions_url
  end
end
