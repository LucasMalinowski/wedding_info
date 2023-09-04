class AddImageToGifts < ActiveRecord::Migration[7.0]
  def change
    remove_column :gifts, :image
    add_column :gifts, :image, :string
  end
end
