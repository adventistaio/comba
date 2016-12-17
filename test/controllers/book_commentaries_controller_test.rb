require 'test_helper'

class BookCommentariesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @book_commentary = book_commentaries(:one)
  end

  test "should get index" do
    get book_commentaries_url
    assert_response :success
  end

  test "should get new" do
    get new_book_commentary_url
    assert_response :success
  end

  test "should create book_commentary" do
    assert_difference('BookCommentary.count') do
      post book_commentaries_url, params: { book_commentary: { book_id: @book_commentary.book_id, commentary: @book_commentary.commentary } }
    end

    assert_redirected_to book_commentary_url(BookCommentary.last)
  end

  test "should show book_commentary" do
    get book_commentary_url(@book_commentary)
    assert_response :success
  end

  test "should get edit" do
    get edit_book_commentary_url(@book_commentary)
    assert_response :success
  end

  test "should update book_commentary" do
    patch book_commentary_url(@book_commentary), params: { book_commentary: { book_id: @book_commentary.book_id, commentary: @book_commentary.commentary } }
    assert_redirected_to book_commentary_url(@book_commentary)
  end

  test "should destroy book_commentary" do
    assert_difference('BookCommentary.count', -1) do
      delete book_commentary_url(@book_commentary)
    end

    assert_redirected_to book_commentaries_url
  end
end
