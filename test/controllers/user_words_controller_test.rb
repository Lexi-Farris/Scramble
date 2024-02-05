require "test_helper"

class UserWordsControllerTest < ActionDispatch::IntegrationTest
 
 test "index" do 
  get "/index.json"
  assert_response 200

  data = JSON.parse(response.data)
  assert_equal UserWord.count, data.length 

  end
 

end