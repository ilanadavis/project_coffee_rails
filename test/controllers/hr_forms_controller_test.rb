require 'test_helper'

class HrFormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hr_form = hr_forms(:one)
  end

  test "should get index" do
    get hr_forms_url
    assert_response :success
  end

  test "should get new" do
    get new_hr_form_url
    assert_response :success
  end

  test "should create hr_form" do
    assert_difference('HrForm.count') do
      post hr_forms_url, params: { hr_form: { annual_base_salary: @hr_form.annual_base_salary, change_effective_date: @hr_form.change_effective_date, comments: @hr_form.comments, department: @hr_form.department, email: @hr_form.email, forward_email_to: @hr_form.forward_email_to, forward_phone_to: @hr_form.forward_phone_to, hire_date: @hr_form.hire_date, last_day_worked: @hr_form.last_day_worked, manager_name: @hr_form.manager_name, name: @hr_form.name, new_annual_base_salary: @hr_form.new_annual_base_salary, new_manager_name: @hr_form.new_manager_name, new_title: @hr_form.new_title, new_total_annual_salary: @hr_form.new_total_annual_salary, new_variable_salary: @hr_form.new_variable_salary, phone_number: @hr_form.phone_number, termination_effective_date: @hr_form.termination_effective_date, title: @hr_form.title, total_annual_salary: @hr_form.total_annual_salary, variable_salary: @hr_form.variable_salary } }
    end

    assert_redirected_to hr_form_url(HrForm.last)
  end

  test "should show hr_form" do
    get hr_form_url(@hr_form)
    assert_response :success
  end

  test "should get edit" do
    get edit_hr_form_url(@hr_form)
    assert_response :success
  end

  test "should update hr_form" do
    patch hr_form_url(@hr_form), params: { hr_form: { annual_base_salary: @hr_form.annual_base_salary, change_effective_date: @hr_form.change_effective_date, comments: @hr_form.comments, department: @hr_form.department, email: @hr_form.email, forward_email_to: @hr_form.forward_email_to, forward_phone_to: @hr_form.forward_phone_to, hire_date: @hr_form.hire_date, last_day_worked: @hr_form.last_day_worked, manager_name: @hr_form.manager_name, name: @hr_form.name, new_annual_base_salary: @hr_form.new_annual_base_salary, new_manager_name: @hr_form.new_manager_name, new_title: @hr_form.new_title, new_total_annual_salary: @hr_form.new_total_annual_salary, new_variable_salary: @hr_form.new_variable_salary, phone_number: @hr_form.phone_number, termination_effective_date: @hr_form.termination_effective_date, title: @hr_form.title, total_annual_salary: @hr_form.total_annual_salary, variable_salary: @hr_form.variable_salary } }
    assert_redirected_to hr_form_url(@hr_form)
  end

  test "should destroy hr_form" do
    assert_difference('HrForm.count', -1) do
      delete hr_form_url(@hr_form)
    end

    assert_redirected_to hr_forms_url
  end
end
