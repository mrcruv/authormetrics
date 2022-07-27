require "application_system_test_case"

class AuthorRatingsTest < ApplicationSystemTestCase
  setup do
    @author_rating = author_ratings(:one)
  end

  test "visiting the index" do
    visit author_ratings_url
    assert_selector "h1", text: "Author ratings"
  end

  test "should create author rating" do
    visit author_ratings_url
    click_on "New author rating"

    fill_in "Author", with: @author_rating.author_id
    fill_in "Rating", with: @author_rating.rating
    fill_in "Rating timestamp", with: @author_rating.rating_timestamp
    fill_in "User", with: @author_rating.user_id
    click_on "Create Author rating"

    assert_text "Author rating was successfully created"
    click_on "Back"
  end

  test "should update Author rating" do
    visit author_rating_url(@author_rating)
    click_on "Edit this author rating", match: :first

    fill_in "Author", with: @author_rating.author_id
    fill_in "Rating", with: @author_rating.rating
    fill_in "Rating timestamp", with: @author_rating.rating_timestamp
    fill_in "User", with: @author_rating.user_id
    click_on "Update Author rating"

    assert_text "Author rating was successfully updated"
    click_on "Back"
  end

  test "should destroy Author rating" do
    visit author_rating_url(@author_rating)
    click_on "Destroy this author rating", match: :first

    assert_text "Author rating was successfully destroyed"
  end
end
