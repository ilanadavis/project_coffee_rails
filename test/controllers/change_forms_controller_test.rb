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
      post change_forms_url, params: {
        name: @hr_form.name, 
        change_effective_date: @hr_form.change_effective_date, 
        new_title: @hr_form.new_title, 
        department: @hr_form.department, 
        new_manager_name: @hr_form.new_manager_name, 
        new_annual_base_salary: @hr_form.new_annual_base_salary, 
        new_variable_salary: @hr_form.new_variable_salary, 
        new_total_annual_salary: @hr_form.new_total_annual_salary 
      }
    end

  assert_redirected_to new_change_form_url
  end
end