class AddImgsToRaces < ActiveRecord::Migration[5.2]
  def change
    add_column :races, :img, :string
    add_column :races, :img2, :string
    add_column :races, :img3, :string
    add_column :races, :img4, :string
  end
end
