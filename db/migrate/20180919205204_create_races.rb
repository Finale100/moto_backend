class CreateRaces < ActiveRecord::Migration[5.2]
  def change
    create_table :races do |t|
      t.string :name
      t.string :city
      t.string :country
      t.integer :length
      t.string :date
      t.string :winner
      t.string :second
      t.string :third
      t.timestamps
    end
  end
end
