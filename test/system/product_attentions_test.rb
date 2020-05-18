require "application_system_test_case"

class ProductAttentionsTest < ApplicationSystemTestCase
  setup do
    @product_attention = product_attentions(:one)
  end

  test "visiting the index" do
    visit product_attentions_url
    assert_selector "h1", text: "Product Attentions"
  end

  test "creating a Product attention" do
    visit product_attentions_url
    click_on "New Product Attention"

    fill_in "Actual danger", with: @product_attention.actual_danger_id
    fill_in "Product", with: @product_attention.product_id
    click_on "Create Product attention"

    assert_text "Product attention was successfully created"
    click_on "Back"
  end

  test "updating a Product attention" do
    visit product_attentions_url
    click_on "Edit", match: :first

    fill_in "Actual danger", with: @product_attention.actual_danger_id
    fill_in "Product", with: @product_attention.product_id
    click_on "Update Product attention"

    assert_text "Product attention was successfully updated"
    click_on "Back"
  end

  test "destroying a Product attention" do
    visit product_attentions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Product attention was successfully destroyed"
  end
end
