require "application_system_test_case"

class ArticolosTest < ApplicationSystemTestCase
  setup do
    @articolo = articolos(:one)
  end

  test "visiting the index" do
    visit articolos_url
    assert_selector "h1", text: "Articolos"
  end

  test "should create articolo" do
    visit articolos_url
    click_on "New articolo"

    click_on "Create Articolo"

    assert_text "Articolo was successfully created"
    click_on "Back"
  end

  test "should update Articolo" do
    visit articolo_url(@articolo)
    click_on "Edit this articolo", match: :first

    click_on "Update Articolo"

    assert_text "Articolo was successfully updated"
    click_on "Back"
  end

  test "should destroy Articolo" do
    visit articolo_url(@articolo)
    click_on "Destroy this articolo", match: :first

    assert_text "Articolo was successfully destroyed"
  end
end
