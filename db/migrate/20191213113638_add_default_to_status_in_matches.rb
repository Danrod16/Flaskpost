class AddDefaultToStatusInMatches < ActiveRecord::Migration[5.2]
  def change
    change_column_default :matches, :status, 'pending'
  end
end
