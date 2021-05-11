require "application_system_test_case"

class CollagesTest < ApplicationSystemTestCase
  setup do
    @collage = collages(:one)
  end

  test "visiting the index" do
    visit collages_url
    assert_selector "h1", text: "Collages"
  end

  test "creating a Collage" do
    visit collages_url
    click_on "New Collage"

    click_on "Create Collage"

    assert_text "Collage was successfully created"
    click_on "Back"
  end

  test "updating a Collage" do
    visit collages_url
    click_on "Edit", match: :first

    click_on "Update Collage"

    assert_text "Collage was successfully updated"
    click_on "Back"
  end

  test "destroying a Collage" do
    visit collages_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Collage was successfully destroyed"
  end
end
