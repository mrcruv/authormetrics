require "application_system_test_case"

class AmministratoriTest < ApplicationSystemTestCase
  setup do
    @amministratore = amministratori(:one)
  end

  test "visiting the index" do
    visit amministratori_url
    assert_selector "h1", text: "Amministratori"
  end

  test "should create amministratore" do
    visit amministratori_url
    click_on "New amministratore"

    click_on "Create Amministratore"

    assert_text "Amministratore was successfully created"
    click_on "Back"
  end

  test "should update Amministratore" do
    visit amministratore_url(@amministratore)
    click_on "Edit this amministratore", match: :first

    click_on "Update Amministratore"

    assert_text "Amministratore was successfully updated"
    click_on "Back"
  end

  test "should destroy Amministratore" do
    visit amministratore_url(@amministratore)
    click_on "Destroy this amministratore", match: :first

    assert_text "Amministratore was successfully destroyed"
  end
end
