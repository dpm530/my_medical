require "application_system_test_case"

class FamilyHistoriesTest < ApplicationSystemTestCase
  setup do
    @family_history = family_histories(:one)
  end

  test "visiting the index" do
    visit family_histories_url
    assert_selector "h1", text: "Family Histories"
  end

  test "creating a Family history" do
    visit family_histories_url
    click_on "New Family History"

    click_on "Create Family history"

    assert_text "Family history was successfully created"
    click_on "Back"
  end

  test "updating a Family history" do
    visit family_histories_url
    click_on "Edit", match: :first

    click_on "Update Family history"

    assert_text "Family history was successfully updated"
    click_on "Back"
  end

  test "destroying a Family history" do
    visit family_histories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Family history was successfully destroyed"
  end
end
