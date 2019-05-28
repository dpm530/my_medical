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

    click_on "Create Health insurance"

    assert_text "Health insurance was successfully created"
    click_on "Back"
  end

  test "updating a Health insurance" do
    visit health_insurances_url
    click_on "Edit", match: :first

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
