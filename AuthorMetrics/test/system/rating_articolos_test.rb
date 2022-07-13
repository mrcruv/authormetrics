require "application_system_test_case"

class RatingarticoliTest < ApplicationSystemTestCase
  setup do
    @rating_articolo = rating_articoli(:one)
  end

  test "visiting the index" do
    visit rating_articoli_url
    assert_selector "h1", text: "Rating articoli"
  end

  test "should create rating articolo" do
    visit rating_articoli_url
    click_on "New rating articolo"

    click_on "Create Rating articolo"

    assert_text "Rating articolo was successfully created"
    click_on "Back"
  end

  test "should update Rating articolo" do
    visit rating_articolo_url(@rating_articolo)
    click_on "Edit this rating articolo", match: :first

    click_on "Update Rating articolo"

    assert_text "Rating articolo was successfully updated"
    click_on "Back"
  end

  test "should destroy Rating articolo" do
    visit rating_articolo_url(@rating_articolo)
    click_on "Destroy this rating articolo", match: :first

    assert_text "Rating articolo was successfully destroyed"
  end
end
