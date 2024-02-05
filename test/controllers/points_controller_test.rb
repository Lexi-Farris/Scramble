require "test_helper"

class PointsControllerTest < ActionDispatch::IntegrationTest
  
  test "index" do 
    get "/points.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Point.count, data.length
  end

end
 