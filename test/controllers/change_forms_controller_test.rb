require 'test_helper'

class ChangeFormsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get change_forms_new_url
    assert_response :success
  end

  test "should get create" do
    get change_forms_create_url
    assert_response :success
  end

end
