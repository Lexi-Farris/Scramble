require "test_helper"

class UserWordsControllerTest < ActionDispatch::IntegrationTest
 
  test "index" do 
    get "/user_words.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal UserWord.count, data.length 

  end
  
  test "create" do
    assert_difference @user_words, 1 do 
      post "/user_words.json", params: {word: "hip", word_value: 8  }
      assert_response 200
    end
  end

end
