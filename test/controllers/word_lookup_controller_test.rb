require "test_helper"

class WordLookupControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get word_lookup_index_url
    assert_response :success
  end
end
