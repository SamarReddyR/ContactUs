require 'test_helper'

class ContactsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get contact_url
    assert_response :success
  end
end