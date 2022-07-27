require "test_helper"

class FavoritePublicationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @favorite_publication = favorite_publications(:one)
  end

  test "should get index" do
    get favorite_publications_url
    assert_response :success
  end

  test "should get new" do
    get new_favorite_publication_url
    assert_response :success
  end

  test "should create favorite_publication" do
    assert_difference("FavoritePublication.count") do
      post favorite_publications_url, params: { favorite_publication: { publication_id: @favorite_publication.publication_id, user_id: @favorite_publication.user_id } }
    end

    assert_redirected_to favorite_publication_url(FavoritePublication.last)
  end

  test "should show favorite_publication" do
    get favorite_publication_url(@favorite_publication)
    assert_response :success
  end

  test "should get edit" do
    get edit_favorite_publication_url(@favorite_publication)
    assert_response :success
  end

  test "should update favorite_publication" do
    patch favorite_publication_url(@favorite_publication), params: { favorite_publication: { publication_id: @favorite_publication.publication_id, user_id: @favorite_publication.user_id } }
    assert_redirected_to favorite_publication_url(@favorite_publication)
  end

  test "should destroy favorite_publication" do
    assert_difference("FavoritePublication.count", -1) do
      delete favorite_publication_url(@favorite_publication)
    end

    assert_redirected_to favorite_publications_url
  end
end
