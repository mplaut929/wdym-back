require 'test_helper'

class MemeCaptionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @meme_caption = meme_captions(:one)
  end

  test "should get index" do
    get meme_captions_url, as: :json
    assert_response :success
  end

  test "should create meme_caption" do
    assert_difference('MemeCaption.count') do
      post meme_captions_url, params: { meme_caption: { caption_id: @meme_caption.caption_id, meme_id: @meme_caption.meme_id } }, as: :json
    end

    assert_response 201
  end

  test "should show meme_caption" do
    get meme_caption_url(@meme_caption), as: :json
    assert_response :success
  end

  test "should update meme_caption" do
    patch meme_caption_url(@meme_caption), params: { meme_caption: { caption_id: @meme_caption.caption_id, meme_id: @meme_caption.meme_id } }, as: :json
    assert_response 200
  end

  test "should destroy meme_caption" do
    assert_difference('MemeCaption.count', -1) do
      delete meme_caption_url(@meme_caption), as: :json
    end

    assert_response 204
  end
end
