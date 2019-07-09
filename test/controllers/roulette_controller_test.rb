require 'test_helper'

class RouletteControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get roulette_index_url
    assert_response :success
  end

end
