require "application_system_test_case"

class HospitalizationsTest < ApplicationSystemTestCase
  setup do
    @hospitalization = hospitalizations(:one)
  end

  test "visiting the index" do
    visit hospitalizations_url
    assert_selector "h1", text: "Hospitalizations"
  end

  test "creating a Hospitalization" do
    visit hospitalizations_url
    click_on "New Hospitalization"

    fill_in "Admit", with: @hospitalization.admit
    fill_in "Date", with: @hospitalization.date
    fill_in "Discharge", with: @hospitalization.discharge
    fill_in "Reasons", with: @hospitalization.reasons
    click_on "Create Hospitalization"

    assert_text "Hospitalization was successfully created"
    click_on "Back"
  end

  test "updating a Hospitalization" do
    visit hospitalizations_url
    click_on "Edit", match: :first

    fill_in "Admit", with: @hospitalization.admit
    fill_in "Date", with: @hospitalization.date
    fill_in "Discharge", with: @hospitalization.discharge
    fill_in "Reasons", with: @hospitalization.reasons
    click_on "Update Hospitalization"

    assert_text "Hospitalization was successfully updated"
    click_on "Back"
  end

  test "destroying a Hospitalization" do
    visit hospitalizations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Hospitalization was successfully destroyed"
  end
end
