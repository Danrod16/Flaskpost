class AddScoreColumnToProfiles < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :score, :float
  end
end
