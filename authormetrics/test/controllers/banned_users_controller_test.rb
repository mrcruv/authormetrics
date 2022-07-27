require "test_helper"

class BannedUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @banned_user = banned_users(:one)
  end

  test "should get index" do
    get banned_users_url
    assert_response :success
  end

  test "should get new" do
    get new_banned_user_url
    assert_response :success
  end

  test "should create banned_user" do
    assert_difference("BannedUser.count") do
      post banned_users_url, params: { banned_user: { end_date: @banned_user.end_date, start_date: @banned_user.start_date, user_id: @banned_user.user_id } }
    end

    assert_redirected_to banned_user_url(BannedUser.last)
  end

  test "should show banned_user" do
    get banned_user_url(@banned_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_banned_user_url(@banned_user)
    assert_response :success
  end

  test "should update banned_user" do
    patch banned_user_url(@banned_user), params: { banned_user: { end_date: @banned_user.end_date, start_date: @banned_user.start_date, user_id: @banned_user.user_id } }
    assert_redirected_to banned_user_url(@banned_user)
  end

  test "should destroy banned_user" do
    assert_difference("BannedUser.count", -1) do
      delete banned_user_url(@banned_user)
    end

    assert_redirected_to banned_users_url
  end
end
