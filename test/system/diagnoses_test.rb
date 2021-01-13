require "application_system_test_case"

class DiagnosesTest < ApplicationSystemTestCase
  setup do
    @diagnosis = diagnoses(:one)
  end

  test "visiting the index" do
    visit diagnoses_url
    assert_selector "h1", text: "Diagnoses"
  end

  test "creating a Diagnosis" do
    visit diagnoses_url
    click_on "New Diagnosis"

    fill_in "Doctor", with: @diagnosis.doctor_id
    fill_in "Location", with: @diagnosis.location
    fill_in "Name", with: @diagnosis.name
    fill_in "Stage", with: @diagnosis.stage
    fill_in "Type", with: @diagnosis.type
    fill_in "User", with: @diagnosis.user_id
    click_on "Create Diagnosis"

    assert_text "Diagnosis was successfully created"
    click_on "Back"
  end

  test "updating a Diagnosis" do
    visit diagnoses_url
    click_on "Edit", match: :first

    fill_in "Doctor", with: @diagnosis.doctor_id
    fill_in "Location", with: @diagnosis.location
    fill_in "Name", with: @diagnosis.name
    fill_in "Stage", with: @diagnosis.stage
    fill_in "Type", with: @diagnosis.type
    fill_in "User", with: @diagnosis.user_id
    click_on "Update Diagnosis"

    assert_text "Diagnosis was successfully updated"
    click_on "Back"
  end

  test "destroying a Diagnosis" do
    visit diagnoses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Diagnosis was successfully destroyed"
  end
end
