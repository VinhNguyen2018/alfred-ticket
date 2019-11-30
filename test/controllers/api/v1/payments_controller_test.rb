require 'test_helper'

class Api::V1::PaymentsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get api_v1_payments_create_url
    assert_response :success
  end

end
