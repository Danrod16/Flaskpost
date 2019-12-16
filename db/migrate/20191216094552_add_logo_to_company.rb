class AddLogoToCompany < ActiveRecord::Migration[5.2]
  def change
    add_column :companies , :logo, :string
  end
end
