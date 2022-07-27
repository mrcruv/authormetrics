require "application_system_test_case"

class PublicationRatingsTest < ApplicationSystemTestCase
  setup do
    @publication_rating = publication_ratings(:one)
  end

  test "visiting the index" do
    visit publication_ratings_url
    assert_selector "h1", text: "Publication ratings"
  end

  test "should create publication rating" do
    visit publication_ratings_url
    click_on "New publication rating"

    fill_in "Publication", with: @publication_rating.publication_id
    fill_in "Rating", with: @publication_rating.rating
    fill_in "Rating timestamp", with: @publication_rating.rating_timestamp
    fill_in "User", with: @publication_rating.user_id
    click_on "Create Publication rating"

    assert_text "Publication rating was successfully created"
    click_on "Back"
  end

  test "should update Publication rating" do
    visit publication_rating_url(@publication_rating)
    click_on "Edit this publication rating", match: :first

    fill_in "Publication", with: @publication_rating.publication_id
    fill_in "Rating", with: @publication_rating.rating
    fill_in "Rating timestamp", with: @publication_rating.rating_timestamp
    fill_in "User", with: @publication_rating.user_id
    click_on "Update Publication rating"

    assert_text "Publication rating was successfully updated"
    click_on "Back"
  end

  test "should destroy Publication rating" do
    visit publication_rating_url(@publication_rating)
    click_on "Destroy this publication rating", match: :first

    assert_text "Publication rating was successfully destroyed"
  end
end
