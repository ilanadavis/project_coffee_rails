class HireFormsController < ApplicationController
  
    # GET /hr_forms/new
  def new
    @hr_form = HrForm.new
  end
end
