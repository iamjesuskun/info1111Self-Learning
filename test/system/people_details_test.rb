require "application_system_test_case"

class PeopleDetailsTest < ApplicationSystemTestCase
  setup do
    @people_detail = people_details(:one)
  end

  test "visiting the index" do
    visit people_details_url
    assert_selector "h1", text: "People Details"
  end

  test "creating a People detail" do
    visit people_details_url
    click_on "New People Detail"

    fill_in "Email", with: @people_detail.email
    fill_in "First name", with: @people_detail.first_name
    fill_in "Last name", with: @people_detail.last_name
    fill_in "Phone number", with: @people_detail.phone_number
    click_on "Create People detail"

    assert_text "People detail was successfully created"
    click_on "Back"
  end

  test "updating a People detail" do
    visit people_details_url
    click_on "Edit", match: :first

    fill_in "Email", with: @people_detail.email
    fill_in "First name", with: @people_detail.first_name
    fill_in "Last name", with: @people_detail.last_name
    fill_in "Phone number", with: @people_detail.phone_number
    click_on "Update People detail"

    assert_text "People detail was successfully updated"
    click_on "Back"
  end

  test "destroying a People detail" do
    visit people_details_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "People detail was successfully destroyed"
  end
end
