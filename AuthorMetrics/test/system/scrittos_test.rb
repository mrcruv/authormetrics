require "application_system_test_case"

class ScrittosTest < ApplicationSystemTestCase
  setup do
    @scritto = scrittos(:one)
  end

  test "visiting the index" do
    visit scrittos_url
    assert_selector "h1", text: "Scrittos"
  end

  test "should create scritto" do
    visit scrittos_url
    click_on "New scritto"

    click_on "Create Scritto"

    assert_text "Scritto was successfully created"
    click_on "Back"
  end

  test "should update Scritto" do
    visit scritto_url(@scritto)
    click_on "Edit this scritto", match: :first

    click_on "Update Scritto"

    assert_text "Scritto was successfully updated"
    click_on "Back"
  end

  test "should destroy Scritto" do
    visit scritto_url(@scritto)
    click_on "Destroy this scritto", match: :first

    assert_text "Scritto was successfully destroyed"
  end
end
