class RemoveImageFromGift < ActiveRecord::Migration[7.0]
  def change
    remove_column :gifts, :image, :string
  end
end
