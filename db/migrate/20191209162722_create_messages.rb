class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.text :content
      t.references :match, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
