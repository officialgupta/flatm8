require 'test_helper'

class ReportControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get report_main_url
    assert_response :success
  end

end
