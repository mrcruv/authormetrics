require "test_helper"

class commentiControllerTest < ActionDispatch::IntegrationTest
  setup do
    @commento = commenti(:one)
  end

  test "should get index" do
    get commenti_url
    assert_response :success
  end

  test "should get new" do
    get new_commento_url
    assert_response :success
  end

  test "should create commento" do
    assert_difference("Commento.count") do
      post commenti_url, params: { commento: {  } }
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

    assert_redirected_to commenti_url
  end
end
