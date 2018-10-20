require 'test_helper'

class MusicFactsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get music_facts_index_url
    assert_response :success
  end

  test "should get create" do
    get music_facts_create_url
    assert_response :success
  end

end
