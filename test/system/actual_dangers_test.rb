require "application_system_test_case"

class ActualDangersTest < ApplicationSystemTestCase
  setup do
    @actual_danger = actual_dangers(:one)
  end

  test "visiting the index" do
    visit actual_dangers_url
    assert_selector "h1", text: "Actual Dangers"
  end

  test "creating a Actual danger" do
    visit actual_dangers_url
    click_on "New Actual Danger"

    fill_in "Name", with: @actual_danger.name
    click_on "Create Actual danger"

    assert_text "Actual danger was successfully created"
    click_on "Back"
  end

  test "updating a Actual danger" do
    visit actual_dangers_url
    click_on "Edit", match: :first

    fill_in "Name", with: @actual_danger.name
    click_on "Update Actual danger"

    assert_text "Actual danger was successfully updated"
    click_on "Back"
  end

  test "destroying a Actual danger" do
    visit actual_dangers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Actual danger was successfully destroyed"
  end
end
