require "application_system_test_case"

class CommentosTest < ApplicationSystemTestCase
  setup do
    @commento = commentos(:one)
  end

  test "visiting the index" do
    visit commentos_url
    assert_selector "h1", text: "Commentos"
  end

  test "should create commento" do
    visit commentos_url
    click_on "New commento"

    click_on "Create Commento"

    assert_text "Commento was successfully created"
    click_on "Back"
  end

  test "should update Commento" do
    visit commento_url(@commento)
    click_on "Edit this commento", match: :first

    click_on "Update Commento"

    assert_text "Commento was successfully updated"
    click_on "Back"
  end

  test "should destroy Commento" do
    visit commento_url(@commento)
    click_on "Destroy this commento", match: :first

    assert_text "Commento was successfully destroyed"
  end
end
