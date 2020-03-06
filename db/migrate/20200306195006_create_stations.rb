class CreateStations < ActiveRecord::Migration[6.0]
  def change
    create_table :stations do |t|
      t.decimal :lat
      t.decimal :lon
      t.string :name

      t.timestamps
    end
  end
end
