require "test_helper"

class UserWordsControllerTest < ActionDispatch::IntegrationTest
 
  test "index" do 
    get "/user_words.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal UserWord.count, data.length 

  end
 

end
