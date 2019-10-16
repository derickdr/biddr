require 'test_helper'

class BidsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get bids_new_url
    assert_response :success
  end

end
