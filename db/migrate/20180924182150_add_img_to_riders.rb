class AddImgToRiders < ActiveRecord::Migration[5.2]
  def change
    add_column :riders, :img, :string
  end
end
