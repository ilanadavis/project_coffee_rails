class CreateHrForms < ActiveRecord::Migration[5.1]
  def change
    create_table :hr_forms do |t|
      t.string :name
      t.string :email
      t.string :phone_number
      t.string :title
      t.string :manager_name
      t.string :department
      t.string :hire_date
      t.integer :annual_base_salary
      t.integer :variable_salary
      t.integer :total_annual_salary
      t.string :change_effective_date
      t.string :new_title
      t.string :new_manager_name
      t.integer :new_annual_base_salary
      t.integer :new_variable_salary
      t.integer :new_total_annual_salary
      t.string :termination_effective_date
      t.string :last_day_worked
      t.string :forward_email_to
      t.string :forward_phone_to
      t.string :comments

      t.timestamps
    end
  end
end
