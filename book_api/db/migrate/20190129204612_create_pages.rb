class CreatePages < ActiveRecord::Migration[5.2]
  def change
    create_table :pages do |t|
      t.string :name
      t.datetime :date
      t.integer :number
      t.references :book, foreign_key: true

      t.timestamps
    end
  end
end
