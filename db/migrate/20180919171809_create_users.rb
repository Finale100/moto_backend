class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :img
      t.string :about
      t.string :location
      t.string :what_do_you_ride
      t.timestamps
    end
  end
end
