class CreateMatches < ActiveRecord::Migration[5.2]
  def change
    create_table :matches do |t|
      t.string :status
      t.references :application, foreign_key: true
      t.references :posting, foreign_key: true

      t.timestamps
    end
  end
end
