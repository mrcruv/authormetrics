require "application_system_test_case"

class UtentiTest < ApplicationSystemTestCase
  setup do
    @utente = utenti(:one)
  end

  test "visiting the index" do
    visit utenti_url
    assert_selector "h1", text: "Utenti"
  end

  test "should create utente" do
    visit utenti_url
    click_on "New utente"

    click_on "Create Utente"

    assert_text "Utente was successfully created"
    click_on "Back"
  end

  test "should update Utente" do
    visit utente_url(@utente)
    click_on "Edit this utente", match: :first

    click_on "Update Utente"

    assert_text "Utente was successfully updated"
    click_on "Back"
  end

  test "should destroy Utente" do
    visit utente_url(@utente)
    click_on "Destroy this utente", match: :first

    assert_text "Utente was successfully destroyed"
  end
end