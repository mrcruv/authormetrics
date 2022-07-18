require "test_helper"

class RecensioniautoriControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recensione_autore = recensioni_autori(:one)
  end

  test "should get index" do
    get recensioni_autori_url
    assert_response :success
  end

  test "should get new" do
    get new_recensione_autore_url
    assert_response :success
  end

  test "should create recensione_autore" do
    assert_difference("RecensioneAutore.count") do
      post recensioni_autori_url, params: { recensione_autore: {  } }
    end

    assert_redirected_to recensione_autore_url(RecensioneAutore.last)
  end

  test "should show recensione_autore" do
    get recensione_autore_url(@recensione_autore)
    assert_response :success
  end

  test "should get edit" do
    get edit_recensione_autore_url(@recensione_autore)
    assert_response :success
  end

  test "should update recensione_autore" do
    patch recensione_autore_url(@recensione_autore), params: { recensione_autore: {  } }
    assert_redirected_to recensione_autore_url(@recensione_autore)
  end

  test "should destroy recensione_autore" do
    assert_difference("RecensioneAutore.count", -1) do
      delete recensione_autore_url(@recensione_autore)
    end

    assert_redirected_to recensioni_autori_url
  end
end
