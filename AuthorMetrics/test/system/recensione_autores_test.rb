require "application_system_test_case"

class RecensioniautoriTest < ApplicationSystemTestCase
  setup do
    @recensione_autore = recensioni_autori(:one)
  end

  test "visiting the index" do
    visit recensioni_autori_url
    assert_selector "h1", text: "Recensione autori"
  end

  test "should create recensione autore" do
    visit recensioni_autori_url
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
