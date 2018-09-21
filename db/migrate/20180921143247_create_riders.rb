class CreateRiders < ActiveRecord::Migration[5.2]
  def change
    create_table :riders do |t|
      t.string :name
      t.string :team
      t.string :nationality
      t.integer :points
      t.integer :bike
      t.integer :podiums
      t.integer :pole
      t.integer :victories
      t.timestamps
    end
  end
end
