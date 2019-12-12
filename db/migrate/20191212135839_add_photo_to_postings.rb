class AddPhotoToPostings < ActiveRecord::Migration[5.2]
  def change
    add_column :postings, :photo, :string
  end
end
