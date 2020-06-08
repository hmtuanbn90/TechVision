require 'test_helper'

class RevisesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get revises_index_url
    assert_response :success
  end

end
