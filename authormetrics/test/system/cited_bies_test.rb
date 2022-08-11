require "application_system_test_case"

class CitedBiesTest < ApplicationSystemTestCase
  setup do
    @cited_by = cited_bies(:one)
  end

  test "visiting the index" do
    visit cited_bies_url
    assert_selector "h1", text: "Cited bies"
  end

  test "should create cited by" do
    visit cited_bies_url
    click_on "New cited by"

    click_on "Create Cited by"

    assert_text "Cited by was successfully created"
    click_on "Back"
  end

  test "should update Cited by" do
    visit cited_by_url(@cited_by)
    click_on "Edit this cited by", match: :first

    click_on "Update Cited by"

    assert_text "Cited by was successfully updated"
    click_on "Back"
  end

  test "should destroy Cited by" do
    visit cited_by_url(@cited_by)
    click_on "Destroy this cited by", match: :first

    assert_text "Cited by was successfully destroyed"
  end
end
