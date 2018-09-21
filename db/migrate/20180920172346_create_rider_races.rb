class CreateRiderRaces < ActiveRecord::Migration[5.2]
  def change
    create_table :rider_races do |t|
      t.integer :rider_id
      t.integer :race_id
      t.timestamps
    end
  end
end
