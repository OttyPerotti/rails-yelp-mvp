require "application_system_test_case"

class RestusTest < ApplicationSystemTestCase
  setup do
    @restu = restus(:one)
  end

  test "visiting the index" do
    visit restus_url
    assert_selector "h1", text: "Restus"
  end

  test "creating a Restu" do
    visit restus_url
    click_on "New Restu"

    click_on "Create Restu"

    assert_text "Restu was successfully created"
    click_on "Back"
  end

  test "updating a Restu" do
    visit restus_url
    click_on "Edit", match: :first

    click_on "Update Restu"

    assert_text "Restu was successfully updated"
    click_on "Back"
  end

  test "destroying a Restu" do
    visit restus_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Restu was successfully destroyed"
  end
end
