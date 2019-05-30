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

    fill_in "Alcohol", with: @general_information.alcohol
    fill_in "Allergies", with: @general_information.allergies
    fill_in "Blood type", with: @general_information.blood_type
    fill_in "Drugs", with: @general_information.drugs
    fill_in "Exercise", with: @general_information.exercise
    fill_in "Height", with: @general_information.height
    fill_in "Note", with: @general_information.note
    fill_in "Organ donor", with: @general_information.organ_donor
    fill_in "Patient", with: @general_information.patient
    fill_in "Tobacco", with: @general_information.tobacco
    fill_in "Weight", with: @general_information.weight
    click_on "Create General information"

    assert_text "General information was successfully created"
    click_on "Back"
  end

  test "updating a General information" do
    visit general_informations_url
    click_on "Edit", match: :first

    fill_in "Alcohol", with: @general_information.alcohol
    fill_in "Allergies", with: @general_information.allergies
    fill_in "Blood type", with: @general_information.blood_type
    fill_in "Drugs", with: @general_information.drugs
    fill_in "Exercise", with: @general_information.exercise
    fill_in "Height", with: @general_information.height
    fill_in "Note", with: @general_information.note
    fill_in "Organ donor", with: @general_information.organ_donor
    fill_in "Patient", with: @general_information.patient
    fill_in "Tobacco", with: @general_information.tobacco
    fill_in "Weight", with: @general_information.weight
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
