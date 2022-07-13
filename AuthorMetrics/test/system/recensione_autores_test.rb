require "application_system_test_case"

class RecensioneAutoresTest < ApplicationSystemTestCase
  setup do
    @recensione_autore = recensione_autores(:one)
  end

  test "visiting the index" do
    visit recensione_autores_url
    assert_selector "h1", text: "Recensione autores"
  end

  test "should create recensione autore" do
    visit recensione_autores_url
    click_on "New recensione autore"

    click_on "Create Recensione autore"

    assert_text "Recensione autore was successfully created"
    click_on "Back"
  end

  test "should update Recensione autore" do
    visit recensione_autore_url(@recensione_autore)
    click_on "Edit this recensione autore", match: :first

    click_on "Update Recensione autore"

    assert_text "Recensione autore was successfully updated"
    click_on "Back"
  end

  test "should destroy Recensione autore" do
    visit recensione_autore_url(@recensione_autore)
    click_on "Destroy this recensione autore", match: :first

    assert_text "Recensione autore was successfully destroyed"
  end
end
