class RemoveSalaryMaxFromProfile < ActiveRecord::Migration[5.2]
  def change
    remove_column :profiles, :salary_max
  end
end
