require "application_system_test_case"

class ImmunizationsTest < ApplicationSystemTestCase
  setup do
    @immunization = immunizations(:one)
  end

  test "visiting the index" do
    visit immunizations_url
    assert_selector "h1", text: "Immunizations"
  end

  test "creating a Immunization" do
    visit immunizations_url
    click_on "New Immunization"

    click_on "Create Immunization"

    assert_text "Immunization was successfully created"
    click_on "Back"
  end

  test "updating a Immunization" do
    visit immunizations_url
    click_on "Edit", match: :first

    click_on "Update Immunization"

    assert_text "Immunization was successfully updated"
    click_on "Back"
  end

  test "destroying a Immunization" do
    visit immunizations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Immunization was successfully destroyed"
  end
end
