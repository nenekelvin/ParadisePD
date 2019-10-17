require "application_system_test_case"

class CastsTest < ApplicationSystemTestCase
  setup do
    @cast = casts(:one)
  end

  test "visiting the index" do
    visit casts_url
    assert_selector "h1", text: "Casts"
  end

  test "creating a Cast" do
    visit casts_url
    click_on "New Cast"

    fill_in "Description", with: @cast.description
    fill_in "Name", with: @cast.name
    fill_in "Picture", with: @cast.picture
    click_on "Create Cast"

    assert_text "Cast was successfully created"
    click_on "Back"
  end

  test "updating a Cast" do
    visit casts_url
    click_on "Edit", match: :first

    fill_in "Description", with: @cast.description
    fill_in "Name", with: @cast.name
    fill_in "Picture", with: @cast.picture
    click_on "Update Cast"

    assert_text "Cast was successfully updated"
    click_on "Back"
  end

  test "destroying a Cast" do
    visit casts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cast was successfully destroyed"
  end
end
