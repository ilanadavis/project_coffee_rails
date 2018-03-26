class ChangeHrFormsToDates < ActiveRecord::Migration[5.1]
  def change
    change_column(:hr_forms, :hire_date, :date)
    change_column(:hr_forms, :change_effective_date, :date)
    change_column(:hr_forms, :termination_effective_date, :date)
  end
end
