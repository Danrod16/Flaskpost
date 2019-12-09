class CreatePostings < ActiveRecord::Migration[5.2]
  def change
    create_table :postings do |t|
      t.string :field
      t.string :job_title
      t.string :contract_types
      t.string :experience
      t.string :languages
      t.string :locations
      t.string :description
      t.integer :salary_max
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
