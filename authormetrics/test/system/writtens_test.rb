require "application_system_test_case"

class WrittensTest < ApplicationSystemTestCase
  setup do
    @written = writtens(:one)
  end

  test "visiting the index" do
    visit writtens_url
    assert_selector "h1", text: "Writtens"
  end

  test "should create written" do
    visit writtens_url
    click_on "New written"

    fill_in "Author", with: @written.author_id
    fill_in "Publication", with: @written.publication_id
    click_on "Create Written"

    assert_text "Written was successfully created"
    click_on "Back"
  end

  test "should update Written" do
    visit written_url(@written)
    click_on "Edit this written", match: :first

    fill_in "Author", with: @written.author_id
    fill_in "Publication", with: @written.publication_id
    click_on "Update Written"

    assert_text "Written was successfully updated"
    click_on "Back"
  end

  test "should destroy Written" do
    visit written_url(@written)
    click_on "Destroy this written", match: :first

    assert_text "Written was successfully destroyed"
  end
end
