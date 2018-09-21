class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.string :race
      t.string :date
      t.string :location
      t.string :what_to_bring
      t.timestamps
    end
  end
end
