class ChangeFormsController < ApplicationController
# GET /change_forms/new
  def new
    @hr_form = HrForm.new
  end
  
  
  # POST /change_forms
  # POST /change_forms.json
  def create
    @hr_form = HrForm.new(hr_form_params)

    respond_to do |format|
      if @hr_form.save
        format.html { redirect_to new_change_form_url, notice: 'Change form was successfully created.' }
        format.json { render :show, status: :created }
      else
        format.html { render :new }
        format.json { render json: @hr_form.errors, status: :unprocessable_entity }
      end
    end
  end
  
  
  private
  def hr_form_params
    params.permit(:name, :email, :phone_number, :title, :manager_name, :department, :hire_date, :annual_base_salary, :variable_salary, :total_annual_salary, :change_effective_date, :new_title, :new_manager_name, :new_annual_base_salary, :new_variable_salary, :new_total_annual_salary, :termination_effective_date, :last_day_worked, :forward_email_to, :forward_phone_to, :comments)
  end

end
