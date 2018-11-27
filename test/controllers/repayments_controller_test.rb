require 'test_helper'

class RepaymentsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get repayments_show_url
    assert_response :success
  end

end
