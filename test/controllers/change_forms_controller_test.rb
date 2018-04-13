require 'test_helper'

class ChangeFormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hr_form = hr_forms(:one)
  end
  
  test "should get new" do
    get new_change_form_url
    assert_response :success
  end

  test "should get create change_form" do
    assert_difference('HrForm.count') do
      post change_forms_url
    end

  assert_redirected_to new_change_form_url
  end
end