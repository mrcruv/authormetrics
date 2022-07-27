require "application_system_test_case"

class FavoritePublicationsTest < ApplicationSystemTestCase
  setup do
    @favorite_publication = favorite_publications(:one)
  end

  test "visiting the index" do
    visit favorite_publications_url
    assert_selector "h1", text: "Favorite publications"
  end

  test "should create favorite publication" do
    visit favorite_publications_url
    click_on "New favorite publication"

    fill_in "Publication", with: @favorite_publication.publication_id
    fill_in "User", with: @favorite_publication.user_id
    click_on "Create Favorite publication"

    assert_text "Favorite publication was successfully created"
    click_on "Back"
  end

  test "should update Favorite publication" do
    visit favorite_publication_url(@favorite_publication)
    click_on "Edit this favorite publication", match: :first

    fill_in "Publication", with: @favorite_publication.publication_id
    fill_in "User", with: @favorite_publication.user_id
    click_on "Update Favorite publication"

    assert_text "Favorite publication was successfully updated"
    click_on "Back"
  end

  test "should destroy Favorite publication" do
    visit favorite_publication_url(@favorite_publication)
    click_on "Destroy this favorite publication", match: :first

    assert_text "Favorite publication was successfully destroyed"
  end
end
