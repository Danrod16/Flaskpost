class AddSingleStatusesToMatches < ActiveRecord::Migration[5.2]
  def change
    add_column :matches, :status_seeker, :string
    add_column :matches, :status_recruiter, :string
  end
end
