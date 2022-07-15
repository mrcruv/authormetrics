require "application_system_test_case"

class AutoriPreferitiTest < ApplicationSystemTestCase
  setup do
    @autore_preferito = autori_preferiti(:one)
  end

  test "visiting the index" do
    visit autori_preferiti_url
    assert_selector "h1", text: "Autore preferiti"
  end

  test "should create autore preferito" do
    visit autori_preferiti_url
    click_on "New autore preferito"

    click_on "Create Autore preferito"

    assert_text "Autore preferito was successfully created"
    click_on "Back"
  end

  test "should update Autore preferito" do
    visit autore_preferito_url(@autore_preferito)
    click_on "Edit this autore preferito", match: :first

    click_on "Update Autore preferito"

    assert_text "Autore preferito was successfully updated"
    click_on "Back"
  end

  test "should destroy Autore preferito" do
    visit autore_preferito_url(@autore_preferito)
    click_on "Destroy this autore preferito", match: :first

    assert_text "Autore preferito was successfully destroyed"
  end
end
