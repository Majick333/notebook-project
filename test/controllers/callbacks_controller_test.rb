require 'test_helper'

class CallbacksControllerTest < ActionDispatch::IntegrationTest
  test "should get github" do
    get callbacks_github_url
    assert_response :success
  end

end
