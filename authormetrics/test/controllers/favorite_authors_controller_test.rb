require "test_helper"

class FavoriteAuthorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @favorite_author = favorite_authors(:one)
  end

  test "should get index" do
    get favorite_authors_url
    assert_response :success
  end

  test "should get new" do
    get new_favorite_author_url
    assert_response :success
  end

  test "should create favorite_author" do
    assert_difference("FavoriteAuthor.count") do
      post favorite_authors_url, params: { favorite_author: { author_id: @favorite_author.author_id, user_id: @favorite_author.user_id } }
    end

    assert_redirected_to favorite_author_url(FavoriteAuthor.last)
  end

  test "should show favorite_author" do
    get favorite_author_url(@favorite_author)
    assert_response :success
  end

  test "should get edit" do
    get edit_favorite_author_url(@favorite_author)
    assert_response :success
  end

  test "should update favorite_author" do
    patch favorite_author_url(@favorite_author), params: { favorite_author: { author_id: @favorite_author.author_id, user_id: @favorite_author.user_id } }
    assert_redirected_to favorite_author_url(@favorite_author)
  end

  test "should destroy favorite_author" do
    assert_difference("FavoriteAuthor.count", -1) do
      delete favorite_author_url(@favorite_author)
    end

    assert_redirected_to favorite_authors_url
  end
end
