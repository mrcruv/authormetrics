require "application_system_test_case"

class FavoriteAuthorsTest < ApplicationSystemTestCase
  setup do
    @favorite_author = favorite_authors(:one)
  end

  test "visiting the index" do
    visit favorite_authors_url
    assert_selector "h1", text: "Favorite authors"
  end

  test "should create favorite author" do
    visit favorite_authors_url
    click_on "New favorite author"

    fill_in "Author", with: @favorite_author.author_id
    fill_in "User", with: @favorite_author.user_id
    click_on "Create Favorite author"

    assert_text "Favorite author was successfully created"
    click_on "Back"
  end

  test "should update Favorite author" do
    visit favorite_author_url(@favorite_author)
    click_on "Edit this favorite author", match: :first

    fill_in "Author", with: @favorite_author.author_id
    fill_in "User", with: @favorite_author.user_id
    click_on "Update Favorite author"

    assert_text "Favorite author was successfully updated"
    click_on "Back"
  end

  test "should destroy Favorite author" do
    visit favorite_author_url(@favorite_author)
    click_on "Destroy this favorite author", match: :first

    assert_text "Favorite author was successfully destroyed"
  end
end
