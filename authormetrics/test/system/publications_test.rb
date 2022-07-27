require "application_system_test_case"

class PublicationsTest < ApplicationSystemTestCase
  setup do
    @publication = publications(:one)
  end

  test "visiting the index" do
    visit publications_url
    assert_selector "h1", text: "Publications"
  end

  test "should create publication" do
    visit publications_url
    click_on "New publication"

    fill_in "Cited by", with: @publication.cited_by
    fill_in "Link", with: @publication.link
    fill_in "Pub year", with: @publication.pub_year
    fill_in "Publication", with: @publication.publication_id
    fill_in "Published on", with: @publication.published_on
    fill_in "Title", with: @publication.title
    click_on "Create Publication"

    assert_text "Publication was successfully created"
    click_on "Back"
  end

  test "should update Publication" do
    visit publication_url(@publication)
    click_on "Edit this publication", match: :first

    fill_in "Cited by", with: @publication.cited_by
    fill_in "Link", with: @publication.link
    fill_in "Pub year", with: @publication.pub_year
    fill_in "Publication", with: @publication.publication_id
    fill_in "Published on", with: @publication.published_on
    fill_in "Title", with: @publication.title
    click_on "Update Publication"

    assert_text "Publication was successfully updated"
    click_on "Back"
  end

  test "should destroy Publication" do
    visit publication_url(@publication)
    click_on "Destroy this publication", match: :first

    assert_text "Publication was successfully destroyed"
  end
end
