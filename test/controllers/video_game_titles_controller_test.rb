require 'test_helper'

class VideoGameTitlesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get video_game_titles_index_url
    assert_response :success
  end

  test "should get show" do
    get video_game_titles_show_url
    assert_response :success
  end

end
