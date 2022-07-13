require "application_system_test_case"

class RatingAutoresTest < ApplicationSystemTestCase
  setup do
    @rating_autore = rating_autores(:one)
  end

  test "visiting the index" do
    visit rating_autores_url
    assert_selector "h1", text: "Rating autores"
  end

  test "should create rating autore" do
    visit rating_autores_url
    click_on "New rating autore"

    click_on "Create Rating autore"

    assert_text "Rating autore was successfully created"
    click_on "Back"
  end

  test "should update Rating autore" do
    visit rating_autore_url(@rating_autore)
    click_on "Edit this rating autore", match: :first

    click_on "Update Rating autore"

    assert_text "Rating autore was successfully updated"
    click_on "Back"
  end

  test "should destroy Rating autore" do
    visit rating_autore_url(@rating_autore)
    click_on "Destroy this rating autore", match: :first

    assert_text "Rating autore was successfully destroyed"
  end
end
