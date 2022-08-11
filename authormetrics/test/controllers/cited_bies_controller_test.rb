require "test_helper"

class CitedBiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cited_by = cited_bies(:one)
  end

  test "should get index" do
    get cited_bies_url
    assert_response :success
  end

  test "should get new" do
    get new_cited_by_url
    assert_response :success
  end

  test "should create cited_by" do
    assert_difference("CitedBy.count") do
      post cited_bies_url, params: { cited_by: {  } }
    end

    assert_redirected_to cited_by_url(CitedBy.last)
  end

  test "should show cited_by" do
    get cited_by_url(@cited_by)
    assert_response :success
  end

  test "should get edit" do
    get edit_cited_by_url(@cited_by)
    assert_response :success
  end

  test "should update cited_by" do
    patch cited_by_url(@cited_by), params: { cited_by: {  } }
    assert_redirected_to cited_by_url(@cited_by)
  end

  test "should destroy cited_by" do
    assert_difference("CitedBy.count", -1) do
      delete cited_by_url(@cited_by)
    end

    assert_redirected_to cited_bies_url
  end
end
