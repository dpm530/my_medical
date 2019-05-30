require "application_system_test_case"

class HealthInsurancesTest < ApplicationSystemTestCase
  setup do
    @health_insurance = health_insurances(:one)
  end

  test "visiting the index" do
    visit health_insurances_url
    assert_selector "h1", text: "Health Insurances"
  end

  test "creating a Health insurance" do
    visit health_insurances_url
    click_on "New Health Insurance"

    fill_in "Company", with: @health_insurance.company
    fill_in "Copays", with: @health_insurance.copays
    fill_in "Coverage", with: @health_insurance.coverage
    fill_in "Group number", with: @health_insurance.group_number
    fill_in "Id number", with: @health_insurance.id_number
    fill_in "Patient", with: @health_insurance.patient_id
    fill_in "Phone", with: @health_insurance.phone
    click_on "Create Health insurance"

    assert_text "Health insurance was successfully created"
    click_on "Back"
  end

  test "updating a Health insurance" do
    visit health_insurances_url
    click_on "Edit", match: :first

    fill_in "Company", with: @health_insurance.company
    fill_in "Copays", with: @health_insurance.copays
    fill_in "Coverage", with: @health_insurance.coverage
    fill_in "Group number", with: @health_insurance.group_number
    fill_in "Id number", with: @health_insurance.id_number
    fill_in "Patient", with: @health_insurance.patient_id
    fill_in "Phone", with: @health_insurance.phone
    click_on "Update Health insurance"

    assert_text "Health insurance was successfully updated"
    click_on "Back"
  end

  test "destroying a Health insurance" do
    visit health_insurances_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Health insurance was successfully destroyed"
  end
end
