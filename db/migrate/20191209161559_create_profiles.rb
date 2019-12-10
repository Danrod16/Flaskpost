class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :field
      t.string :job_title
      t.string :contract_types, array: true, default: []
      t.string :experience
      t.string :languages, array: true, default: []
      t.string :locations, array: true, default: []
      t.string :description
      t.integer :salary_min
      t.integer :salary_max
      t.references :user, foreign_key: true

      t.timestamps
    end

    add_index :profiles, :contract_types, using: :gin
    add_index :profiles, :languages, using: :gin
    add_index :profiles, :locations, using: :gin
  end
end
