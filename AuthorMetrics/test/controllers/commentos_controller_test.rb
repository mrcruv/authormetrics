require "test_helper"

class CommentosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @commento = commentos(:one)
  end

  test "should get index" do
    get commentos_url
    assert_response :success
  end

  test "should get new" do
    get new_commento_url
    assert_response :success
  end

  test "should create commento" do
    assert_difference("Commento.count") do
      post commentos_url, params: { commento: {  } }
    end

    assert_redirected_to commento_url(Commento.last)
  end

  test "should show commento" do
    get commento_url(@commento)
    assert_response :success
  end

  test "should get edit" do
    get edit_commento_url(@commento)
    assert_response :success
  end

  test "should update commento" do
    patch commento_url(@commento), params: { commento: {  } }
    assert_redirected_to commento_url(@commento)
  end

  test "should destroy commento" do
    assert_difference("Commento.count", -1) do
      delete commento_url(@commento)
    end

    assert_redirected_to commentos_url
  end
end
