require "test_helper"

class ArticoloPreferitosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @articolo_preferito = articoli_preferiti(:one)
  end

  test "should get index" do
    get articoli_preferiti_url
    assert_response :success
  end

  test "should get new" do
    get new_articolo_preferito_url
    assert_response :success
  end

  test "should create articolo_preferito" do
    assert_difference("ArticoloPreferito.count") do
      post articoli_preferiti_url, params: { articolo_preferito: {  } }
    end

    assert_redirected_to articolo_preferito_url(ArticoloPreferito.last)
  end

  test "should show articolo_preferito" do
    get articolo_preferito_url(@articolo_preferito)
    assert_response :success
  end

  test "should get edit" do
    get edit_articolo_preferito_url(@articolo_preferito)
    assert_response :success
  end

  test "should update articolo_preferito" do
    patch articolo_preferito_url(@articolo_preferito), params: { articolo_preferito: {  } }
    assert_redirected_to articolo_preferito_url(@articolo_preferito)
  end

  test "should destroy articolo_preferito" do
    assert_difference("ArticoloPreferito.count", -1) do
      delete articolo_preferito_url(@articolo_preferito)
    end

    assert_redirected_to articoli_preferiti_url
  end
end
