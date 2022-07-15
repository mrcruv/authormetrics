require "application_system_test_case"

class BansTest < ApplicationSystemTestCase
  setup do
    @ban = bans(:one)
  end

  test "visiting the index" do
    visit bans_url
    assert_selector "h1", text: "Bans"
  end

  test "should create ban" do
    visit bans_url
    click_on "New ban"

    click_on "Create Ban"

    assert_text "Ban was successfully created"
    click_on "Back"
  end

  test "should update Ban" do
    visit ban_url(@ban)
    click_on "Edit this ban", match: :first

    click_on "Update Ban"

    assert_text "Ban was successfully updated"
    click_on "Back"
  end

  test "should destroy Ban" do
    visit ban_url(@ban)
    click_on "Destroy this ban", match: :first

    assert_text "Ban was successfully destroyed"
  end
end
