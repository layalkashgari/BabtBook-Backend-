class CreateTexts < ActiveRecord::Migration[5.2]
  def change
    create_table :texts do |t|
      t.string :content
      t.string :string
      t.references :page, foreign_key: true

      t.timestamps
    end
  end
end
