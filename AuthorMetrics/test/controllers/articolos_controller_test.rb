require "test_helper"

class articoliControllerTest < ActionDispatch::IntegrationTest
  setup do
    @articolo = articoli(:one)
  end

  test "should get index" do
    get articoli_url
    assert_response :success
  end

  test "should get new" do
    get new_articolo_url
    assert_response :success
  end

  test "should create articolo" do
    assert_difference("Articolo.count") do
      post articoli_url, params: { articolo: {  } }
    end

    assert_redirected_to articolo_url(Articolo.last)
  end

  test "should show articolo" do
    get articolo_url(@articolo)
    assert_response :success
  end

  test "should get edit" do
    get edit_articolo_url(@articolo)
    assert_response :success
  end

  test "should update articolo" do
    patch articolo_url(@articolo), params: { articolo: {  } }
    assert_redirected_to articolo_url(@articolo)
  end

  test "should destroy articolo" do
    assert_difference("Articolo.count", -1) do
      delete articolo_url(@articolo)
    end

    assert_redirected_to articoli_url
  end
end
