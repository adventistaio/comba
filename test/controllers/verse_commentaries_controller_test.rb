require 'test_helper'

class VerseCommentariesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @verse_commentary = verse_commentaries(:one)
  end

  test "should get index" do
    get verse_commentaries_url
    assert_response :success
  end

  test "should get new" do
    get new_verse_commentary_url
    assert_response :success
  end

  test "should create verse_commentary" do
    assert_difference('VerseCommentary.count') do
      post verse_commentaries_url, params: { verse_commentary: { commentary: @verse_commentary.commentary, verse_id: @verse_commentary.verse_id } }
    end

    assert_redirected_to verse_commentary_url(VerseCommentary.last)
  end

  test "should show verse_commentary" do
    get verse_commentary_url(@verse_commentary)
    assert_response :success
  end

  test "should get edit" do
    get edit_verse_commentary_url(@verse_commentary)
    assert_response :success
  end

  test "should update verse_commentary" do
    patch verse_commentary_url(@verse_commentary), params: { verse_commentary: { commentary: @verse_commentary.commentary, verse_id: @verse_commentary.verse_id } }
    assert_redirected_to verse_commentary_url(@verse_commentary)
  end

  test "should destroy verse_commentary" do
    assert_difference('VerseCommentary.count', -1) do
      delete verse_commentary_url(@verse_commentary)
    end

    assert_redirected_to verse_commentaries_url
  end
end
