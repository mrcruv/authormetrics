require "application_system_test_case"

class AutoriTest < ApplicationSystemTestCase
  setup do
    @autore = autori(:one)
  end

  test "visiting the index" do
    visit autori_url
    assert_selector "h1", text: "Autori"
  end

  test "should create autore" do
    visit autori_url
    click_on "New autore"

    click_on "Create Autore"

    assert_text "Autore was successfully created"
    click_on "Back"
  end

  test "should update Autore" do
    visit autore_url(@autore)
    click_on "Edit this autore", match: :first

    click_on "Update Autore"

    assert_text "Autore was successfully updated"
    click_on "Back"
  end

  test "should destroy Autore" do
    visit autore_url(@autore)
    click_on "Destroy this autore", match: :first

    assert_text "Autore was successfully destroyed"
  end
end
