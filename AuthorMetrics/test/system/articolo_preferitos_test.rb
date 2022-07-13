require "application_system_test_case"

class ArticoloPreferitosTest < ApplicationSystemTestCase
  setup do
    @articolo_preferito = articolo_preferitos(:one)
  end

  test "visiting the index" do
    visit articolo_preferitos_url
    assert_selector "h1", text: "Articolo preferitos"
  end

  test "should create articolo preferito" do
    visit articolo_preferitos_url
    click_on "New articolo preferito"

    click_on "Create Articolo preferito"

    assert_text "Articolo preferito was successfully created"
    click_on "Back"
  end

  test "should update Articolo preferito" do
    visit articolo_preferito_url(@articolo_preferito)
    click_on "Edit this articolo preferito", match: :first

    click_on "Update Articolo preferito"

    assert_text "Articolo preferito was successfully updated"
    click_on "Back"
  end

  test "should destroy Articolo preferito" do
    visit articolo_preferito_url(@articolo_preferito)
    click_on "Destroy this articolo preferito", match: :first

    assert_text "Articolo preferito was successfully destroyed"
  end
end
