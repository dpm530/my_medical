require "application_system_test_case"

class GeneralInformationsTest < ApplicationSystemTestCase
  setup do
    @general_information = general_informations(:one)
  end

  test "visiting the index" do
    visit general_informations_url
    assert_selector "h1", text: "General Informations"
  end

  test "creating a General information" do
    visit general_informations_url
    click_on "New General Information"

    click_on "Create General information"

    assert_text "General information was successfully created"
    click_on "Back"
  end

  test "updating a General information" do
    visit general_informations_url
    click_on "Edit", match: :first

    click_on "Update General information"

    assert_text "General information was successfully updated"
    click_on "Back"
  end

  test "destroying a General information" do
    visit general_informations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "General information was successfully destroyed"
  end
end
