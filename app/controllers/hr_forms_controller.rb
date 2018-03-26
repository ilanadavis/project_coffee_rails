class HrFormsController < ApplicationController
  before_action :set_hr_form, only: [:show, :edit, :update, :destroy]

  # GET /hr_forms
  # GET /hr_forms.json
  def index
    @hr_forms = HrForm.all
  end

  # GET /hr_forms/1
  # GET /hr_forms/1.json
  def show
  end

  # GET /hr_forms/new
  def new
    @hr_form = HrForm.new
  end

  # GET /hr_forms/1/edit
  def edit
  end

  # POST /hr_forms
  # POST /hr_forms.json
  def create
    @hr_form = HrForm.new(hr_form_params)

    respond_to do |format|
      if @hr_form.save
        format.html { redirect_to @hr_form, notice: 'Hr form was successfully created.' }
        format.json { render :show, status: :created, location: @hr_form }
      else
        format.html { render :new }
        format.json { render json: @hr_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hr_forms/1
  # PATCH/PUT /hr_forms/1.json
  def update
    respond_to do |format|
      if @hr_form.update(hr_form_params)
        format.html { redirect_to @hr_form, notice: 'Hr form was successfully updated.' }
        format.json { render :show, status: :ok, location: @hr_form }
      else
        format.html { render :edit }
        format.json { render json: @hr_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hr_forms/1
  # DELETE /hr_forms/1.json
  def destroy
    @hr_form.destroy
    respond_to do |format|
      format.html { redirect_to hr_forms_url, notice: 'Hr form was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hr_form
      @hr_form = HrForm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hr_form_params
      params.require(:hr_form).permit(:name, :email, :phone_number, :title, :manager_name, :department, :hire_date, :annual_base_salary, :variable_salary, :total_annual_salary, :change_effective_date, :new_title, :new_manager_name, :new_annual_base_salary, :new_variable_salary, :new_total_annual_salary, :termination_effective_date, :last_day_worked, :forward_email_to, :forward_phone_to, :comments)
    end
end
