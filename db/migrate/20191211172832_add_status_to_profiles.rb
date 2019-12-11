class AddStatusToProfiles < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :status, :string
  end
end
