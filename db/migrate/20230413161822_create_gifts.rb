class CreateGifts < ActiveRecord::Migration[7.0]
  def change
    create_table :gifts do |t|
      t.string :name
      t.string :link
      t.string :image
      t.float :price

      t.timestamps
    end
  end
end
