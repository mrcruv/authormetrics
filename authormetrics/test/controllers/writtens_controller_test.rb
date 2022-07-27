require "test_helper"

class WrittensControllerTest < ActionDispatch::IntegrationTest
  setup do
    @written = writtens(:one)
  end

  test "should get index" do
    get writtens_url
    assert_response :success
  end

  test "should get new" do
    get new_written_url
    assert_response :success
  end

  test "should create written" do
    assert_difference("Written.count") do
      post writtens_url, params: { written: { author_id: @written.author_id, publication_id: @written.publication_id } }
    end

    assert_redirected_to written_url(Written.last)
  end

  test "should show written" do
    get written_url(@written)
    assert_response :success
  end

  test "should get edit" do
    get edit_written_url(@written)
    assert_response :success
  end

  test "should update written" do
    patch written_url(@written), params: { written: { author_id: @written.author_id, publication_id: @written.publication_id } }
    assert_redirected_to written_url(@written)
  end

  test "should destroy written" do
    assert_difference("Written.count", -1) do
      delete written_url(@written)
    end

    assert_redirected_to writtens_url
  end
end
