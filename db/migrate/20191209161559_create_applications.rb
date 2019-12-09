class CreateApplications < ActiveRecord::Migration[5.2]
  def change
    create_table :applications do |t|
      t.string :field
      t.string :job_title
      t.string :contract_types
      t.string :experience
      t.string :languages
      t.string :locations
      t.string :description
      t.integer :salary_min
      t.integer :salary_max
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
