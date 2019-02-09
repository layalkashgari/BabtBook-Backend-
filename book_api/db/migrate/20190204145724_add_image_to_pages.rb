class AddImageToPages < ActiveRecord::Migration[5.2]
  def change
    add_column :pages, :image, :string
  end
end
