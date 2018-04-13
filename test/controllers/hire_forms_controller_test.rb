require 'test_helper'

class HireFormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hr_form = hr_forms(:one)
  end

  test "should get new" do
    get new_hire_form_url
    assert_response :success
  end
  

  test "should create hire_form" do
    assert_difference('HrForm.count') do
      post hire_forms_url, params: {
        annual_base_salary: @hr_form.annual_base_salary, 
        department: @hr_form.department, 
        email: @hr_form.email, 
        hire_date: @hr_form.hire_date, 
        manager_name: @hr_form.manager_name, 
        name: @hr_form.name, 
        phone_number: @hr_form.phone_number, 
        title: @hr_form.title, 
        total_annual_salary: @hr_form.total_annual_salary, 
        variable_salary: @hr_form.variable_salary 
      }
    end

    assert_redirected_to new_hire_form_url
  end
  
  
  
  
  
end
