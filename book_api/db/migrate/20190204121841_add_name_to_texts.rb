class AddNameToTexts < ActiveRecord::Migration[5.2]
  def change
    add_column :texts, :name, :string
    remove_column :texts, :string
  end
end
