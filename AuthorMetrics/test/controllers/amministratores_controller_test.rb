require "test_helper"

class AmministratoriControllerTest < ActionDispatch::IntegrationTest
  setup do
    @amministratore = amministratori(:one)
  end

  test "should get index" do
    get amministratori_url
    assert_response :success
  end

  test "should get new" do
    get new_amministratore_url
    assert_response :success
  end

  test "should create amministratore" do
    assert_difference("Amministratore.count") do
      post amministratori_url, params: { amministratore: {  } }
    end

    assert_redirected_to amministratore_url(Amministratore.last)
  end

  test "should show amministratore" do
    get amministratore_url(@amministratore)
    assert_response :success
  end

  test "should get edit" do
    get edit_amministratore_url(@amministratore)
    assert_response :success
  end

  test "should update amministratore" do
    patch amministratore_url(@amministratore), params: { amministratore: {  } }
    assert_redirected_to amministratore_url(@amministratore)
  end

  test "should destroy amministratore" do
    assert_difference("Amministratore.count", -1) do
      delete amministratore_url(@amministratore)
    end

    assert_redirected_to amministratori_url
  end
end
